/*
 * lwip_init.h
 *
 *  Created on: 2021Äê12ÔÂ28ÈÕ
 *      Author: john
 */

#ifndef SRC_LWIP_INIT_H_
#define SRC_LWIP_INIT_H_

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"

#include "platform_config.h"

#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#include "lwip/tcp.h"
#include "xil_cache.h"

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif


/* defined by each RAW mode application */
void print_app_header();
int start_application();
int transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;

#endif /* SRC_LWIP_INIT_H_ */
