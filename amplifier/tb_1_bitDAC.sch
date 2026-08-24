v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -110 -50 -90 {lab=0}
N 140 -110 140 -90 {lab=0}
N -50 -190 -50 -170 {lab=AVDD}
N 140 -200 140 -170 {lab=vin}
N 60 -110 60 -90 {lab=0}
N 60 -190 60 -170 {lab=-VREF}
N 520 -270 520 -230 {lab=AVDD}
N 390 -130 430 -130 {lab=vin}
N 630 -130 680 -130 {lab=out}
N 550 -280 550 -230 {lab=+VREF}
N 550 -30 550 30 {lab=-VREF}
N 520 -30 520 -10 {lab=AGND}
N 280 -250 280 -230 {lab=AGND}
N 520 -10 520 -0 {lab=AGND}
N 60 -260 60 -240 {lab=0}
N 60 -340 60 -320 {lab=+VREF}
C {vsource.sym} 140 -140 0 0 {name=V2 value="PULSE(1 2.3 20u 10n 10n 80u 160u)" savecurrent=false}
C {vsource.sym} -50 -140 0 0 {name=V3 value=2.5 savecurrent=false}
C {gnd.sym} -50 -90 0 0 {name=l4 lab=0}
C {gnd.sym} 140 -90 0 0 {name=l6 lab=0}
C {lab_wire.sym} 140 -190 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 740 300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 990 -230 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all


tran 1n 0.5m
plot v(out)
plot v(vin)

write tb_1_bitDAC.raw
.endc
"}
C {lab_wire.sym} 390 -130 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -50 -190 0 0 {name=p2 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 520 -260 0 0 {name=p4 sig_type=std_logic lab=AVDD}
C {vsource.sym} 60 -140 0 0 {name=V1 value=1.65 savecurrent=false}
C {gnd.sym} 60 -90 0 0 {name=l2 lab=0}
C {lab_wire.sym} 60 -190 0 0 {name=p5 sig_type=std_logic lab=-VREF}
C {lab_wire.sym} 550 30 0 0 {name=p6 sig_type=std_logic lab=-VREF}
C {1_bitDAC.sym} 520 -130 0 0 {name=x1}
C {lab_wire.sym} 550 -280 0 0 {name=p7 sig_type=std_logic lab=+VREF}
C {lab_wire.sym} 280 -250 0 0 {name=p8 sig_type=std_logic lab=AGND}
C {lab_wire.sym} 520 0 0 0 {name=p9 sig_type=std_logic lab=AGND}
C {capa.sym} 680 -100 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 680 -70 0 0 {name=l1 lab=0}
C {vsource.sym} 280 -200 0 0 {name=V4 value=0 savecurrent=false}
C {gnd.sym} 280 -170 0 0 {name=l3 lab=0}
C {vsource.sym} 60 -290 0 0 {name=V5 value=2.5 savecurrent=false}
C {gnd.sym} 60 -240 0 0 {name=l5 lab=0}
C {lab_wire.sym} 60 -340 0 0 {name=p10 sig_type=std_logic lab=+VREF}
C {lab_wire.sym} 670 -130 0 0 {name=p11 sig_type=std_logic lab=out}
