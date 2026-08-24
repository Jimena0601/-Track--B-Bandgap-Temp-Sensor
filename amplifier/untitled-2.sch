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
N -480 270 -480 340 {lab=#net3}
N -540 370 -540 400 {lab=0}
N -710 20 -710 40 {lab=0}
N -610 20 -610 40 {lab=0}
N -520 20 -520 40 {lab=0}
N -710 -60 -710 -40 {lab=VDD}
N -520 -70 -520 -40 {lab=#net4}
N -610 -70 -610 -40 {lab=vinp}
N -200 100 -170 100 {lab=vinp}
N 80 100 110 100 {lab=vinn}
N 40 40 180 40 {lab=out}
N -40 340 -40 380 {lab=0}
N -540 340 -540 380 {lab=0}
N -260 -130 -210 -130 {lab=vinn}
N -360 -130 -320 -130 {lab=vinn1}
N -40 130 -40 280 {lab=#net1}
N -500 340 -480 340 {lab=#net3}
N -480 340 -80 340 {lab=#net3}
N 100 -70 100 100 {lab=vinn}
N 180 -70 180 40 {lab=out}
N 100 -70 120 -70 {lab=vinn}
N -850 10 -850 30 {lab=0}
N -850 -80 -850 -50 {lab=vinn1}
N -200 160 -200 180 {lab=vinp}
N 110 100 120 100 {lab=vinn}
N -200 100 -200 180 {lab=vinp}
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
C {vsource.sym} -610 -10 0 0 {name=V1 value="DC 1.6" savecurrent=false}
C {vsource.sym} -520 -10 0 0 {name=V2 value="DC 1.6" savecurrent=false}
C {vsource.sym} -710 -10 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -710 40 0 0 {name=l4 lab=0}
C {gnd.sym} -610 40 0 0 {name=l5 lab=0}
C {gnd.sym} -520 40 0 0 {name=l6 lab=0}
C {vdd.sym} -710 -60 0 0 {name=l7 lab=VDD}
C {vdd.sym} -40 -60 0 0 {name=l8 lab=VDD}
C {gnd.sym} -50 100 0 0 {name=l9 lab=0}
C {lab_wire.sym} -200 180 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 110 100 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -850 -70 0 0 {name=p3 sig_type=std_logic lab=vinn1}
C {lab_wire.sym} -610 -60 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {devices/code_shown.sym} 340 300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 430 -120 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all


tran 5ns 10u

plot v(vinn1)
plot v(vinn) v(out) v(vinp)
plot (v(vinn1)-v(vinn) /1e6)
plot i(v2)
write untitled-2.raw
.endc
"}
C {lab_wire.sym} 40 40 0 0 {name=p5 sig_type=std_logic lab=out}
C {gnd.sym} 180 100 0 0 {name=l10 lab=0}
C {isource.sym} -540 180 0 0 {name=I0 value=20u}
C {vdd.sym} -540 150 0 0 {name=l11 lab=VDD}
C {capa.sym} 150 -70 3 1 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 100 -70 0 0 {name=p6 sig_type=std_logic lab=vinn}
C {res.sym} -290 -130 1 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -220 -130 0 0 {name=p7 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -350 -130 0 0 {name=p8 sig_type=std_logic lab=vinn1}
C {gnd.sym} -40 400 0 0 {name=l1 lab=0}
C {gnd.sym} -540 400 0 0 {name=l2 lab=0}
C {vsource.sym} -850 -20 0 0 {name=V4 value="PULSE(1.6 2.1 0 8n 8n 2.5u 5u)" savecurrent=false}
C {gnd.sym} -850 30 0 0 {name=l3 lab=0}
C {capa.sym} 150 100 3 1 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
