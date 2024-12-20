//三次样条插值
//作者：罗虞刚
//时间：2022.01
//版本：V1.0
//引用参考：https://blog.csdn.net/limingmcu/article/details/91492214

#include "malloc.h"

double tx[19]={0.52,3.1,8.0,17.95,28.65,39.62,50.65,78,104.6,156.6,208.6,260.7,312.5,364.4,416.3,468,494,507,520};
double ty[19]={5.28794,9.4,13.84,20.2,24.9,28.44,31.1,35,36.5,36.6,34.6,31.0,26.34,20.9,14.8,7.8,3.7,1.5,0.2};

double sx[9] = {-1.00   ,-0.54   ,0.13   ,1.12   ,1.89   ,2.06   ,2.54    ,2.82    ,3.50};
double sf[9] = {-2.46   ,-5.26  ,-1.87   ,0.05   ,1.65   ,2.69   ,4.56    ,7.89   ,10.31};


int CSI_n;     //样本分段数，所以总样本点是n+1
double CSI_X[1024];   //采样点的X轴
double CSI_F[1024];   //采样点的Y轴数据
//double *CSI_A;
//double *CSI_B;
//double *CSI_C;
//double *CSI_D;
//double *CSI_h;
//double *CSI_M;

//曲线系数
double CSI_A_ai[1024];
double CSI_A_bi[1024];
double CSI_A_ci[1024];
double CSI_A_di[1024];

double CSI_B_ai[1024];
double CSI_B_bi[1024];
double CSI_B_ci[1024];
double CSI_B_di[1024];

double CSI_VA;
double CSI_VB;

double h[1024];
double A[1024];
double B[1024];
double C[1024];
double D[1024];
double E[1024];
double M[1024];


void CSI_Init(void)
{
//	int i;
//
//	CSI_X = (float*)malloc(sizeof(float) * (CSI_n+4));
//	CSI_F = (float*)malloc(sizeof(float) * (CSI_n+4));

//	CSI_A = (double*)malloc(sizeof(double) * (CSI_n+4));
//	CSI_B = (double*)malloc(sizeof(double) * (CSI_n+4));
//	CSI_C = (double*)malloc(sizeof(double) * (CSI_n+4));
//	CSI_D = (double*)malloc(sizeof(double) * (CSI_n+4));
//	CSI_h = (double*)malloc(sizeof(double) * (CSI_n+4));
//	CSI_M = (double*)malloc(sizeof(double) * (CSI_n+4));

//	CSI_A_ai = (float*)malloc(sizeof(float) * (CSI_n+4));
//	CSI_A_bi = (float*)malloc(sizeof(float) * (CSI_n+4));
//	CSI_A_ci = (float*)malloc(sizeof(float) * (CSI_n+4));
//	CSI_A_di = (float*)malloc(sizeof(float) * (CSI_n+4));
//
//	CSI_B_ai = (float*)malloc(sizeof(float) * (CSI_n+4));
//	CSI_B_bi = (float*)malloc(sizeof(float) * (CSI_n+4));
//	CSI_B_ci = (float*)malloc(sizeof(float) * (CSI_n+4));
//	CSI_B_di = (float*)malloc(sizeof(float) * (CSI_n+4));

}


void TDMA(double* X, const int nk, double* Ak, double* Bk, double* Ck, double* Dk)
{
    int i;
    double tmp;
    //上三角矩阵
    Ck[0] = Ck[0] / Bk[0];
    Dk[0] = Dk[0] / Bk[0];
    for(i = 1; i<nk; i++)
    {
        tmp = (Bk[i] - Ak[i] * Ck[i-1]);
        Ck[i] = Ck[i] / tmp;
        Dk[i] = (Dk[i] - Ak[i] * Dk[i-1]) / tmp;
    }
    //直接求出X的最后一个值
    X[nk-1] = Dk[nk-1];
    //逆向迭代， 求出X
    for(i = nk-2; i>=0; i--)
    {
        X[i] = Dk[i] - Ck[i] * X[i+1];
    }
}


void CSI_GetValue_Continue(float x,int pos)
{
	int i=pos;
	float X1,X2,X3;

//	for(i=CSI_n-1;i>=0;i--) {
//		if(x>=CSI_X[i]) {
//			break;
//		}
//	}

	X1 = x;
	X2 = X1*X1;
	X3 = X2*X1;

	//CH_A
	CSI_VA =   CSI_A_ai[i] +
			   CSI_A_bi[i] * X1 +
			   CSI_A_ci[i] * X2 +
			   CSI_A_di[i] * X3;

	//CH_B
	CSI_VB =   CSI_B_ai[i] +
			   CSI_B_bi[i] * X1 +
			   CSI_B_ci[i] * X2 +
			   CSI_B_di[i] * X3;
}

float CSI_GetValue(int CH,float x)
{
	int i;

	for(i=CSI_n-1;i>=0;i--) {
		if(x>=CSI_X[i]) {
			break;
		}
	}

	//CH_A
	if(CH==1) {
		return CSI_A_ai[i] +
			   CSI_A_bi[i] * (x - CSI_X[i]) +
			   CSI_A_ci[i] * (x - CSI_X[i]) * (x - CSI_X[i]) +
			   CSI_A_di[i] * (x - CSI_X[i]) * (x - CSI_X[i]) * (x - CSI_X[i]);
	}

	//CH_B
	if(CH==2) {
		return CSI_B_ai[i] +
			   CSI_B_bi[i] * (x - CSI_X[i]) +
			   CSI_B_ci[i] * (x - CSI_X[i]) * (x - CSI_X[i]) +
			   CSI_B_di[i] * (x - CSI_X[i]) * (x - CSI_X[i]) * (x - CSI_X[i]);
	}
}

//自然边界的三次样条曲线函数
void CSI_GetPara(int CH)
{
    int n = CSI_n;

    //float* h = (float*)malloc(sizeof(float) * (n-0));  //x的??

    /* M矩阵的系数
     *[B0, C0, ...
     *[A1, B1, C1, ...
     *[0,  A2, B2, C2, ...
     *[0, ...             An-1, Bn-1]
     */
//    float* A = (float*)malloc(sizeof(float) * (n-0));
//    float* B = (float*)malloc(sizeof(float) * (n-0));
//    float* C = (float*)malloc(sizeof(float) * (n-0));
//    float* D = (float*)malloc(sizeof(float) * (n-0)); //等号右边的常数矩阵
//    float* E = (float*)malloc(sizeof(float) * (n-0)); //M矩阵的计算结果
//    float* M = (float*)malloc(sizeof(float) * (n));  //包含端点的M矩阵

    int i;

    //计算x的步长
    for ( i = 0; i < n -1; i++)
    {
        h[i] = CSI_X[i + 1] - CSI_X[i];
    }

    //指定系数
    for( i = 0; i< n - 3; i++)
    {
        A[i] = h[i]; //忽略A[0]
        B[i] = 2 * (h[i] + h[i+1]);
        C[i] = h[i+1]; //忽略C(n-1)
    }


    //指定常数D
    for (i = 0; i<n - 3; i++)
    {
        D[i] = 6 * ((CSI_F[i + 2] - CSI_F[i + 1]) / h[i + 1] - (CSI_F[i + 1] - CSI_F[i]) / h[i]);
    }


    //求解三对角矩阵，结果赋值给E
    TDMA(E, n-3, A, B, C, D);

    M[0] = 0; //自然边界的首端M为0
    M[n-1] = 0;  //自然边界的末端M为0
    for(i=1; i<n-1; i++)
    {
        M[i] = E[i-1]; //其它的M值
    }

    //计算得到本组样本数据的三次样条参数组
    if(CH==1) {
		for( i = 0; i < n-1; i++)
		{
			CSI_A_ai[i] = CSI_F[i];
			CSI_A_bi[i] = (CSI_F[i + 1] - CSI_F[i]) / h[i] - (2 * h[i] * M[i] + h[i] * M[i + 1]) / 6;
			CSI_A_ci[i] = M[i] / 2;
			CSI_A_di[i] = (M[i + 1] - M[i]) / (6 * h[i]);
		}
    }

    if(CH==2) {
		for( i = 0; i < n-1; i++)
		{
			CSI_B_ai[i] = CSI_F[i];
			CSI_B_bi[i] = (CSI_F[i + 1] - CSI_F[i]) / h[i] - (2 * h[i] * M[i] + h[i] * M[i + 1]) / 6;
			CSI_B_ci[i] = M[i] / 2;
			CSI_B_di[i] = (M[i + 1] - M[i]) / (6 * h[i]);
		}
    }

//    free(h);
//    free(A);
//    free(B);
//    free(C);
//    free(D);
//    free(E);
//    free(M);
}


