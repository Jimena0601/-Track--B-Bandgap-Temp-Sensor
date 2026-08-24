v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 160 40 180 {lab=0}
N 140 160 140 180 {lab=0}
N 230 160 230 180 {lab=0}
N 40 80 40 100 {lab=VDD}
N 230 70 230 100 {lab=vinn1}
N 140 70 140 100 {lab=vinp}
N 740 210 740 260 {lab=#net1}
N 740 290 740 330 {lab=0}
N 660 290 700 290 {lab=clk}
N 580 210 880 210 {lab=#net1}
N 770 20 880 20 {lab=out}
N 740 -90 740 -60 {lab=VDD}
N 880 -60 880 -30 {lab=VDD}
N 570 -60 570 -30 {lab=VDD}
N 920 -30 960 -30 {lab=clk}
N 490 -30 530 -30 {lab=clk}
N 920 180 950 180 {lab=vinn1}
N 510 180 540 180 {lab=vinp}
N 580 180 880 180 {lab=0}
N 140 340 140 360 {lab=0}
N 140 250 140 280 {lab=clk}
N 570 -0 570 40 {lab=out1}
N 610 70 720 70 {lab=out}
N 780 70 840 70 {lab=out1}
N 810 -0 880 -0 {lab=out}
N 570 20 710 20 {lab=out1}
N 570 -0 670 -0 {lab=out1}
N 710 -30 770 20 {lab=out}
N 710 20 770 -30 {lab=out1}
N 580 100 580 150 {lab=#net2}
N 570 100 580 100 {lab=#net2}
N 880 100 880 150 {lab=#net3}
N 880 70 930 70 {lab=0}
N 510 70 570 70 {lab=0}
N 880 0 880 40 {lab=out}
N 810 -60 810 -30 {lab=VDD}
N 670 -60 670 -30 {lab=VDD}
N 570 30 710 30 {lab=out1}
N 710 30 780 70 {lab=out1}
N 720 70 770 30 {lab=out}
N 770 30 880 30 {lab=out}
N 400 130 580 130 {lab=#net2}
N 400 -0 400 130 {lab=#net2}
N 340 -30 360 -30 {lab=clk}
N 1060 -40 1100 -40 {lab=clk}
N 880 -80 1020 -80 {lab=VDD}
N 880 -80 880 -60 {lab=VDD}
N 1020 -20 1020 130 {lab=#net3}
N 880 130 1020 130 {lab=#net3}
N 400 -60 570 -60 {lab=VDD}
N 400 -60 400 -30 {lab=VDD}
N 1020 -70 1020 -40 {lab=VDD}
N 1020 -80 1020 -70 {lab=VDD}
N 570 -60 670 -60 {lab=VDD}
N 670 -60 880 -60 {lab=VDD}
C {symbols/pfet_03v3.sym} 550 -30 0 0 {name=M4
L=600n
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {vsource.sym} 140 130 0 0 {name=V1 value="1.2" savecurrent=false}
C {vsource.sym} 230 130 0 0 {name=V2 value="PULSE(1 2.3 20u 10n 10n 80u 160u)" savecurrent=false}
C {vsource.sym} 40 130 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 40 180 0 0 {name=l4 lab=0}
C {gnd.sym} 140 180 0 0 {name=l5 lab=0}
C {gnd.sym} 230 180 0 0 {name=l6 lab=0}
C {vdd.sym} 40 80 0 0 {name=l7 lab=VDD}
C {vdd.sym} 740 -90 0 0 {name=l8 lab=VDD}
C {lab_wire.sym} 230 80 0 0 {name=p3 sig_type=std_logic lab=vinn1}
C {lab_wire.sym} 140 80 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {devices/code_shown.sym} 860 530 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1110 0 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all


tran 1n 0.5m
plot v(out)
plot v(out1)
plot v(vinn1) v(out) v(vinp) v(clk) v(out1)
print @m.xm1.m0[vds]
print @m.xm1.m0[vdsat]
print @m.xm2.m0[vds]
print @m.xm2.m0[vdsat]
print @m.xm3.m0[vds]
print @m.xm3.m0[vdsat]
print @m.xm4.m0[vds]
print @m.xm4.m0[vdsat]
print @m.xm5.m0[vds]
print @m.xm5.m0[vdsat]
print i(R1)
write untitled-3.raw
.endc
"}
C {symbols/pfet_03v3.sym} 900 -30 0 1 {name=M2
L=600n
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 560 180 0 0 {name=M7
L=350n
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 720 290 0 0 {name=M8
L=350n
W=30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 900 180 0 1 {name=M1
L=350n
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 590 70 0 1 {name=M3
L=600n
W=50u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 860 70 0 0 {name=M5
L=600n
W=50u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {gnd.sym} 740 180 0 0 {name=l1 lab=0}
C {gnd.sym} 740 330 0 0 {name=l2 lab=0}
C {lab_wire.sym} 520 180 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 950 180 0 0 {name=p2 sig_type=std_logic lab=vinn1}
C {lab_wire.sym} 510 -30 0 0 {name=p5 sig_type=std_logic lab=clk}
C {lab_wire.sym} 960 -30 0 0 {name=p6 sig_type=std_logic lab=clk}
C {lab_wire.sym} 680 290 0 0 {name=p7 sig_type=std_logic lab=clk}
C {gnd.sym} 140 360 0 0 {name=l9 lab=0}
C {lab_wire.sym} 140 260 0 0 {name=p8 sig_type=std_logic lab=clk}
C {vsource.sym} 140 310 0 0 {name=V4 value="PULSE(0 3.3 0 1n 1n 50u 100u)" savecurrent=false}
C {lab_wire.sym} 860 20 0 0 {name=p9 sig_type=std_logic lab=out}
C {symbols/pfet_03v3.sym} 690 -30 0 1 {name=M6
L=600n
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 790 -30 0 0 {name=M10
L=600n
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {gnd.sym} 930 70 0 0 {name=l3 lab=0}
C {gnd.sym} 510 70 0 0 {name=l10 lab=0}
C {lab_wire.sym} 640 20 0 0 {name=p11 sig_type=std_logic lab=out1}
C {symbols/pfet_03v3.sym} 380 -30 0 0 {name=M9
L=600n
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1040 -40 0 1 {name=M11
L=600n
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1100 -40 0 0 {name=p10 sig_type=std_logic lab=clk}
C {lab_wire.sym} 350 -30 0 0 {name=p12 sig_type=std_logic lab=clk}
C {capa.sym} 910 10 1 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 540 10 1 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 510 10 0 0 {name=l11 lab=0}
C {gnd.sym} 940 10 0 0 {name=l12 lab=0}
