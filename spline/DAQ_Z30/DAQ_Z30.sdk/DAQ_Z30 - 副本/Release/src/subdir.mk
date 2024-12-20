################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/Cubic_Spline_interpolation.c \
../src/dma_intr.c \
../src/echo.c \
../src/main.c \
../src/platform_zynq.c \
../src/si5324.c \
../src/sys_intr.c \
../src/timer_intr.c 

OBJS += \
./src/Cubic_Spline_interpolation.o \
./src/dma_intr.o \
./src/echo.o \
./src/main.o \
./src/platform_zynq.o \
./src/si5324.o \
./src/sys_intr.o \
./src/timer_intr.o 

C_DEPS += \
./src/Cubic_Spline_interpolation.d \
./src/dma_intr.d \
./src/echo.d \
./src/main.d \
./src/platform_zynq.d \
./src/si5324.d \
./src/sys_intr.d \
./src/timer_intr.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O2 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DAQ_Z30_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


