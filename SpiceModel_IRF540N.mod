.SUBCKT IRF540N 1 2 3
* SPICE3 MODEL WITH THERMAL RC NETWORK
**************************************
*      Model Generated by MODPEX     *
*Copyright(c) Symmetry Design Systems*
*         All Rights Reserved        *
*    UNPUBLISHED LICENSED SOFTWARE   *
*   Contains Proprietary Information *
*      Which is The Property of      *
*     SYMMETRY OR ITS LICENSORS      *
*Commercial Use or Resale Restricted *
*   by Symmetry License Agreement    *
**************************************
* Model generated on Sep  5, 01
* MODEL FORMAT: SPICE3
* Symmetry POWER MOS Model (Version 1.0)
* External Node Designations
* Node 1 -> Drain
* Node 2 -> Gate
* Node 3 -> Source
M1 9 7 8 8 MM L=100u W=100u
.MODEL MM NMOS LEVEL=1 IS=1e-32
+VTO=3.58173 LAMBDA=0.00806114 KP=112.25
+CGSO=1.896e-05 CGDO=1e-11
RS 8 3 0.025918
D1 3 1 MD
.MODEL MD D IS=1.565e-11 RS=0.006486 N=1.1328 BV=100
+IBV=0.00025 EG=1.2 XTI=3.32496 TT=0
+CJO=1.16e-09 VJ=3.16363 M=0.840542 FC=0.5
RDS 3 1 1e+06
RD 9 1 0.0130608
RG 2 7 6.45271
D2 4 5 MD1
* Default values used in MD1:
*   RS=0 EG=1.11 XTI=3.0 TT=0
*   BV=infinite IBV=1mA
.MODEL MD1 D IS=1e-32 N=50
+CJO=1.30485e-09 VJ=0.899032 M=0.9 FC=1e-08
D3 0 5 MD2
* Default values used in MD2:
*   EG=1.11 XTI=3.0 TT=0 CJO=0
*   BV=infinite IBV=1mA
.MODEL MD2 D IS=1e-10 N=0.4 RS=3e-06
RL 5 10 1
FI2 7 9 VFI2 -1
VFI2 4 0 0
EV16 10 0 9 7 1
CAP 11 10 2.35428e-09
FI1 7 9 VFI1 -1
VFI1 11 6 0
RCAP 6 10 1
D4 0 6 MD3
* Default values used in MD3:
*   EG=1.11 XTI=3.0 TT=0 CJO=0
*   RS=0 BV=infinite IBV=1mA
.MODEL MD3 D IS=1e-10 N=0.4
.ENDS irf540n

*SPICE Thermal Model Subcircuit
.SUBCKT irf540nt 3 0

R_RTHERM1         2 3  0.158
R_RTHERM2         1 2  0.274
R_RTHERM3         0 1  0.29
C_CTHERM1         2 3  0.00131
C_CTHERM2         1 2  0.001686
C_CTHERM3         0 1  0.022562

.ENDS irf540nt



