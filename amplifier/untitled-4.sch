v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -70 -80 -50 {lab=0}
N 110 -70 110 -50 {lab=0}
N -80 -150 -80 -130 {lab=VDD}
N 110 -160 110 -130 {lab=vin}
N 210 -70 240 -70 {lab=vin}
N 280 -230 280 -100 {lab=#net1}
N 220 -260 240 -260 {lab=vin}
N 280 -290 280 -260 {lab=VDD}
N 280 -40 280 -20 {lab=0}
N 610 -180 740 -180 {lab=out}
N 610 -60 740 -60 {lab=out}
N 610 0 740 0 {lab=0}
N 780 -30 820 -30 {lab=vin}
N 780 -210 820 -210 {lab=vin}
N 610 -240 740 -240 {lab=VDD}
N 680 -180 680 -60 {lab=out}
N 570 -210 570 -30 {lab=#net1}
N 280 -150 570 -150 {lab=#net1}
N 220 -260 220 -70 {lab=vin}
N 280 -300 280 -290 {lab=VDD}
N 610 -30 610 -0 {lab=0}
N 610 -240 610 -210 {lab=VDD}
N 280 -70 280 -30 {lab=0}
N 700 -210 740 -210 {lab=0}
N 690 -30 740 -30 {lab=VDD}
C {vsource.sym} 110 -100 0 0 {name=V2 value="PULSE(1 2.3 20u 10n 10n 80u 160u)" savecurrent=false}
C {vsource.sym} -80 -100 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -80 -50 0 0 {name=l4 lab=0}
C {gnd.sym} 110 -50 0 0 {name=l6 lab=0}
C {vdd.sym} -80 -150 0 0 {name=l7 lab=VDD}
C {lab_wire.sym} 110 -150 0 0 {name=p3 sig_type=std_logic lab=vin}
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
write 1-bitDAC.raw
.endc
"}
C {symbols/nfet_03v3.sym} 260 -70 0 0 {name=M7
L=350n
W=5u
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
C {lab_wire.sym} 220 -70 0 0 {name=p1 sig_type=std_logic lab=vin}
C {symbols/pfet_03v3.sym} 260 -260 0 0 {name=M9
L=350n
W=10u
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
C {gnd.sym} 280 -20 0 0 {name=l1 lab=0}
C {symbols/pfet_03v3.sym} 590 -210 0 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 760 -210 0 1 {name=M2
L=350n
W=10u
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
C {symbols/nfet_03v3.sym} 590 -30 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 760 -30 0 1 {name=M4
L=350n
W=10u
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
C {vdd.sym} 280 -300 0 0 {name=l2 lab=VDD}
C {lab_wire.sym} 820 -210 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 820 -30 0 0 {name=p5 sig_type=std_logic lab=vin}
C {vdd.sym} 680 -240 0 0 {name=l3 lab=VDD}
C {gnd.sym} 680 0 0 0 {name=l8 lab=0}
C {lab_wire.sym} 680 -110 0 0 {name=p6 sig_type=std_logic lab=out}
C {gnd.sym} 700 -210 0 0 {name=l5 lab=0}
C {vdd.sym} 690 -30 3 0 {name=l9 lab=VDD}
