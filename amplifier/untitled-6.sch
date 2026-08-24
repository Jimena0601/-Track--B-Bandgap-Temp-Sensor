v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -260 180 -260 200 {lab=0}
N -260 10 -260 30 {lab=0}
N -170 10 -170 30 {lab=0}
N -260 100 -260 120 {lab=VDD}
N -170 -80 -170 -50 {lab=vinn1}
N -260 -80 -260 -50 {lab=vinp}
N 340 60 340 110 {lab=#net1}
N 340 140 340 180 {lab=0}
N 260 140 300 140 {lab=clk}
N 180 60 480 60 {lab=#net1}
N 370 -130 480 -130 {lab=out}
N 480 -210 480 -180 {lab=VDD}
N 170 -210 170 -180 {lab=VDD}
N 520 -180 560 -180 {lab=clk}
N 90 -180 130 -180 {lab=clk}
N 520 30 550 30 {lab=#net2}
N 110 30 140 30 {lab=vinn1}
N 180 30 480 30 {lab=0}
N -170 170 -170 190 {lab=0}
N -170 80 -170 110 {lab=clk}
N 170 -150 170 -110 {lab=out1}
N 210 -80 320 -80 {lab=out}
N 380 -80 440 -80 {lab=out1}
N 410 -150 480 -150 {lab=out}
N 170 -130 310 -130 {lab=out1}
N 170 -150 270 -150 {lab=out1}
N 310 -180 370 -130 {lab=out}
N 310 -130 370 -180 {lab=out1}
N 180 -50 180 0 {lab=#net3}
N 170 -50 180 -50 {lab=#net3}
N 480 -50 480 0 {lab=#net4}
N 480 -80 530 -80 {lab=0}
N 110 -80 170 -80 {lab=0}
N 480 -150 480 -110 {lab=out}
N 410 -210 410 -180 {lab=VDD}
N 270 -210 270 -180 {lab=VDD}
N 170 -120 310 -120 {lab=out1}
N 310 -120 380 -80 {lab=out1}
N 320 -80 370 -120 {lab=out}
N 370 -120 480 -120 {lab=out}
N 0 -20 180 -20 {lab=#net3}
N 0 -150 0 -20 {lab=#net3}
N -60 -180 -40 -180 {lab=clk}
N 660 -180 700 -180 {lab=clk}
N 480 -20 620 -20 {lab=#net4}
N 0 -210 170 -210 {lab=VDD}
N 0 -210 0 -180 {lab=VDD}
N 620 -210 620 -180 {lab=VDD}
N 170 -210 270 -210 {lab=VDD}
N 270 -210 480 -210 {lab=VDD}
N 620 -150 620 -20 {lab=#net4}
N 480 -210 620 -210 {lab=VDD}
C {symbols/pfet_03v3.sym} 150 -180 0 0 {name=M4
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
C {vsource.sym} -260 -20 0 0 {name=V1 value="1.65" savecurrent=false}
C {vsource.sym} -170 -20 0 0 {name=V2 value="PULSE(1.649 1.651 60u 10n 10n 80u 160u)" savecurrent=false}
C {vsource.sym} -260 150 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -260 200 0 0 {name=l4 lab=0}
C {gnd.sym} -260 30 0 0 {name=l5 lab=0}
C {gnd.sym} -170 30 0 0 {name=l6 lab=0}
C {vdd.sym} -260 100 0 0 {name=l7 lab=VDD}
C {lab_wire.sym} -170 -70 0 0 {name=p3 sig_type=std_logic lab=vinn1}
C {lab_wire.sym} -260 -70 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {devices/code_shown.sym} 460 380 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 760 -150 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all


tran 1n 200u
plot v(out)
plot v(out1)
plot v(vinn1) v(vinp) v(clk)
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
write untitled-6.raw
.endc
"}
C {symbols/pfet_03v3.sym} 500 -180 0 1 {name=M2
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
C {symbols/nfet_03v3.sym} 160 30 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 320 140 0 0 {name=M8
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
C {symbols/nfet_03v3.sym} 500 30 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 190 -80 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} 460 -80 0 0 {name=M5
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
C {gnd.sym} 340 30 0 0 {name=l1 lab=0}
C {gnd.sym} 340 180 0 0 {name=l2 lab=0}
C {lab_wire.sym} 550 30 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 120 30 0 0 {name=p2 sig_type=std_logic lab=vinn1}
C {lab_wire.sym} 110 -180 0 0 {name=p5 sig_type=std_logic lab=clk}
C {lab_wire.sym} 560 -180 0 0 {name=p6 sig_type=std_logic lab=clk}
C {lab_wire.sym} 280 140 0 0 {name=p7 sig_type=std_logic lab=clk}
C {gnd.sym} -170 190 0 0 {name=l9 lab=0}
C {lab_wire.sym} -170 90 0 0 {name=p8 sig_type=std_logic lab=clk}
C {vsource.sym} -170 140 0 0 {name=V4 value="PULSE(0 3.3 0 1n 1n 50u 100u)" savecurrent=false}
C {lab_wire.sym} 460 -130 0 0 {name=p9 sig_type=std_logic lab=out}
C {symbols/pfet_03v3.sym} 290 -180 0 1 {name=M6
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
C {symbols/pfet_03v3.sym} 390 -180 0 0 {name=M10
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
C {gnd.sym} 530 -80 0 0 {name=l3 lab=0}
C {gnd.sym} 110 -80 0 0 {name=l10 lab=0}
C {lab_wire.sym} 240 -130 0 0 {name=p11 sig_type=std_logic lab=out1}
C {symbols/pfet_03v3.sym} -20 -180 0 0 {name=M9
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
C {symbols/pfet_03v3.sym} 640 -180 0 1 {name=M11
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
C {lab_wire.sym} 700 -180 0 0 {name=p10 sig_type=std_logic lab=clk}
C {lab_wire.sym} -50 -180 0 0 {name=p12 sig_type=std_logic lab=clk}
C {vdd.sym} 330 -210 0 0 {name=l8 lab=VDD}
C {capa.sym} 510 -140 1 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 540 -140 0 0 {name=l12 lab=0}
C {capa.sym} 140 -140 3 1 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 110 -140 0 1 {name=l11 lab=0}
