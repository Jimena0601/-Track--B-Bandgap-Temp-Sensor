v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 130 40 130 {lab=#net1}
N -130 0 -130 70 {lab=#net2}
N 40 0 40 70 {lab=out}
N -130 -60 40 -60 {lab=VDD}
N -90 -30 0 -30 {lab=#net2}
N -130 30 -60 30 {lab=#net2}
N -60 -30 -60 30 {lab=#net2}
N -130 -60 -130 -30 {lab=VDD}
N 40 -60 40 -30 {lab=VDD}
N -130 100 40 100 {lab=0}
N -40 280 -40 310 {lab=#net1}
N -40 370 -40 400 {lab=0}
N -540 210 -540 310 {lab=#net3}
N -540 270 -480 270 {lab=#net3}
N -540 370 -540 400 {lab=0}
N -710 20 -710 40 {lab=0}
N -610 20 -610 40 {lab=0}
N -710 -60 -710 -40 {lab=VDD}
N -610 -70 -610 -40 {lab=vinp}
N -200 100 -170 100 {lab=vinp}
N 80 100 110 100 {lab=vinn}
N -40 340 -40 380 {lab=0}
N -540 340 -540 380 {lab=0}
N -260 -130 -210 -130 {lab=vinn}
N -360 -130 -320 -130 {lab=vinn1}
N -40 130 -40 280 {lab=#net1}
N -500 340 -480 340 {lab=#net3}
N -480 340 -80 340 {lab=#net3}
N 100 -70 120 -70 {lab=vinn}
N -850 10 -850 30 {lab=0}
N -850 -80 -850 -50 {lab=#net4}
N 110 100 120 100 {lab=vinn}
N -200 100 -200 180 {lab=vinp}
N 180 -70 220 -70 {lab=out}
N 40 30 130 30 {lab=out}
N 180 -120 180 -70 {lab=out}
N 120 -120 120 -70 {lab=vinn}
N -480 270 -480 340 {lab=#net3}
N -540 120 -540 150 {lab=VDD}
N -490 30 -490 50 {lab=0}
N -490 -60 -490 -30 {lab=vinn1}
C {symbols/nfet_03v3.sym} -150 100 0 0 {name=M1
L=2u
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
C {symbols/nfet_03v3.sym} 60 100 0 1 {name=M2
L=2u
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
C {symbols/pfet_03v3.sym} -110 -30 0 1 {name=M3
L=10u
W=100u
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
C {symbols/pfet_03v3.sym} 20 -30 0 0 {name=M4
L=10u
W=100u
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
C {symbols/nfet_03v3.sym} -60 340 0 0 {name=M5
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} -520 340 0 1 {name=M6
L=0.28u
W=0.22u
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
C {vsource.sym} -610 -10 0 0 {name=V1 value="DC 1.4" savecurrent=false}
C {vsource.sym} -710 -10 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -710 40 0 0 {name=l4 lab=0}
C {gnd.sym} -610 40 0 0 {name=l5 lab=0}
C {gnd.sym} -40 100 0 0 {name=l9 lab=0}
C {lab_wire.sym} -200 140 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 110 100 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -610 -60 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {devices/code_shown.sym} 300 520 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 430 -120 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

op
tran 50us 20m

print @m.xm1.m0[id]
print @m.xm1.m0[id]

print @m.xm2.m0[vds]
print @m.xm2.m0[vdsat]

print @m.xm3.m0[vds]
print @m.xm3.m0[vdsat]

print @m.xm4.m0[vds]
print @m.xm4.m0[vdsat]

print @m.xm5.m0[vds]
print @m.xm5.m0[vdsat]

print @m.xm6.m0[vds]
print @m.xm6.m0[vdsat]

plot v(out)
plot v(vinn1) v(out) v(vinp)
plot (v(vinn1)-v(vinn) /1e6)
plot i(v2)
write integrator_test.raw
.endc
"}
C {lab_wire.sym} 40 40 0 0 {name=p5 sig_type=std_logic lab=out}
C {isource.sym} -540 180 0 0 {name=I0 value=20u}
C {capa.sym} 150 -70 3 1 {name=C2
m=1
value=30n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 100 -70 0 0 {name=p6 sig_type=std_logic lab=vinn}
C {res.sym} -290 -130 1 0 {name=R1
value=300k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -220 -130 0 0 {name=p7 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -350 -130 0 0 {name=p8 sig_type=std_logic lab=vinn1}
C {gnd.sym} -40 400 0 0 {name=l1 lab=0}
C {gnd.sym} -540 400 0 0 {name=l2 lab=0}
C {vsource.sym} -850 -20 0 1 {name=V4 value="PULSE(1.3 1.6 0 1u 1u 500u 1m)" savecurrent=false}
C {gnd.sym} 190 30 0 0 {name=l12 lab=0}
C {capa.sym} 160 30 3 1 {name=C3
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 220 -70 0 0 {name=p9 sig_type=std_logic lab=out}
C {res.sym} 150 -120 1 0 {name=R2
value=8k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -30 -60 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -710 -50 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -540 120 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {gnd.sym} -850 30 0 0 {name=l3 lab=0}
C {vsource.sym} -490 0 0 0 {name=V2 value="DC 1.5" savecurrent=false}
C {gnd.sym} -490 50 0 0 {name=l6 lab=0}
C {lab_wire.sym} -490 -50 0 0 {name=p12 sig_type=std_logic lab=vinn1}
