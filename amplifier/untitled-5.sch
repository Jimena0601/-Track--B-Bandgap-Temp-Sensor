v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 -10 150 -10 {lab=#net1}
N -20 -140 -20 -70 {lab=#net2}
N 150 -140 150 -70 {lab=out}
N -20 -200 150 -200 {lab=VDD}
N 20 -170 110 -170 {lab=#net2}
N -20 -110 50 -110 {lab=#net2}
N 50 -170 50 -110 {lab=#net2}
N -20 -200 -20 -170 {lab=VDD}
N 150 -200 150 -170 {lab=VDD}
N -20 -40 150 -40 {lab=0}
N 60 -10 60 20 {lab=#net1}
N -350 -80 -350 20 {lab=#net3}
N -350 -20 -290 -20 {lab=#net3}
N -290 -20 -290 50 {lab=#net3}
N -550 -250 -550 -230 {lab=0}
N -450 -250 -450 -230 {lab=0}
N -360 -250 -360 -230 {lab=0}
N -550 -330 -550 -310 {lab=VDD}
N -360 -340 -360 -310 {lab=vinn1}
N -450 -340 -450 -310 {lab=vinp}
N -90 -40 -60 -40 {lab=vinp}
N 190 -40 220 -40 {lab=vinn}
N 150 -100 290 -100 {lab=out}
N -310 50 20 50 {lab=#net3}
N 290 -210 290 -100 {lab=out}
N 200 -210 230 -210 {lab=vinn}
N 190 -310 240 -310 {lab=vinn}
N 90 -310 130 -310 {lab=vinn1}
N -350 -80 -350 20 {lab=#net3}
N -350 -20 -290 -20 {lab=#net3}
N -290 -20 -290 50 {lab=#net3}
N -350 80 -350 110 {lab=0}
N -350 50 -350 90 {lab=0}
N -310 50 20 50 {lab=#net3}
N 60 80 60 110 {lab=0}
N 60 50 60 90 {lab=0}
C {symbols/nfet_03v3.sym} -40 -40 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 170 -40 0 1 {name=M2
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
C {symbols/pfet_03v3.sym} 0 -170 0 1 {name=M3
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
C {symbols/pfet_03v3.sym} 130 -170 0 0 {name=M4
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
C {vsource.sym} -450 -280 0 0 {name=V1 value="1.5 AC 0.5" savecurrent=false}
C {vsource.sym} -360 -280 0 0 {name=V2 value="1.5 AC -0.5" savecurrent=false}
C {vsource.sym} -550 -280 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -550 -230 0 0 {name=l4 lab=0}
C {gnd.sym} -450 -230 0 0 {name=l5 lab=0}
C {gnd.sym} -360 -230 0 0 {name=l6 lab=0}
C {vdd.sym} -550 -330 0 0 {name=l7 lab=VDD}
C {vdd.sym} 70 -200 0 0 {name=l8 lab=VDD}
C {gnd.sym} 60 -40 0 0 {name=l9 lab=0}
C {lab_wire.sym} -80 -40 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 220 -40 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -360 -330 0 0 {name=p3 sig_type=std_logic lab=vinn1}
C {lab_wire.sym} -450 -330 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {devices/code_shown.sym} 260 30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 540 -260 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all



ac dec 200 100 20k
plot db(v(out)/v(vinn1))
plot phase(v(out)/v(vinn1))*180/pi
write integrator_AC.raw
.endc
"}
C {lab_wire.sym} 150 -100 0 0 {name=p5 sig_type=std_logic lab=out}
C {capa.sym} 290 -70 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 290 -40 0 0 {name=l10 lab=0}
C {isource.sym} -350 -110 0 0 {name=I0 value=20u}
C {vdd.sym} -350 -140 0 0 {name=l11 lab=VDD}
C {capa.sym} 260 -210 1 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 210 -210 0 0 {name=p6 sig_type=std_logic lab=vinn}
C {res.sym} 160 -310 1 0 {name=R1
value=16M
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 230 -310 0 0 {name=p7 sig_type=std_logic lab=vinn}
C {lab_wire.sym} 100 -310 0 0 {name=p8 sig_type=std_logic lab=vinn1}
C {symbols/nfet_03v3.sym} -330 50 0 1 {name=M6
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
C {gnd.sym} -350 110 0 0 {name=l3 lab=0}
C {symbols/nfet_03v3.sym} 40 50 0 0 {name=M5
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
C {gnd.sym} 60 110 0 0 {name=l2 lab=0}
