v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 -120 130 -120 {lab=#net1}
N -40 -250 -40 -180 {lab=#net2}
N 130 -250 130 -180 {lab=out}
N -40 -310 130 -310 {lab=VDD}
N 0 -280 90 -280 {lab=#net2}
N -40 -220 30 -220 {lab=#net2}
N 30 -280 30 -220 {lab=#net2}
N -40 -310 -40 -280 {lab=VDD}
N 130 -310 130 -280 {lab=VDD}
N -40 -150 130 -150 {lab=0}
N 40 -120 40 -90 {lab=#net1}
N 40 -30 40 0 {lab=0}
N -370 -190 -370 -90 {lab=#net3}
N -370 -130 -310 -130 {lab=#net3}
N -310 -130 -310 -60 {lab=#net3}
N -370 -30 -370 0 {lab=0}
N -570 -360 -570 -340 {lab=0}
N -470 -360 -470 -340 {lab=0}
N -380 -360 -380 -340 {lab=0}
N -570 -440 -570 -420 {lab=VDD}
N -380 -450 -380 -420 {lab=vinn1}
N -470 -450 -470 -420 {lab=vinp}
N -110 -150 -80 -150 {lab=vinp}
N 170 -150 200 -150 {lab=vinn}
N 130 -210 270 -210 {lab=out}
N 40 -60 40 -20 {lab=0}
N -370 -60 -370 -20 {lab=0}
N -330 -60 0 -60 {lab=#net3}
N 270 -320 270 -210 {lab=out}
N 180 -320 210 -320 {lab=vinn}
N 170 -420 220 -420 {lab=vinn}
N 70 -420 110 -420 {lab=vinn1}
C {symbols/nfet_03v3.sym} -60 -150 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 150 -150 0 1 {name=M2
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
C {symbols/pfet_03v3.sym} -20 -280 0 1 {name=M3
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
C {symbols/pfet_03v3.sym} 110 -280 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 20 -60 0 0 {name=M5
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
C {gnd.sym} 40 0 0 0 {name=l2 lab=0}
C {symbols/nfet_03v3.sym} -350 -60 0 1 {name=M6
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
C {gnd.sym} -370 0 0 0 {name=l3 lab=0}
C {vsource.sym} -470 -390 0 0 {name=V1 value="1.5 AC 0.5" savecurrent=false}
C {vsource.sym} -380 -390 0 0 {name=V2 value="1.5 AC -0.5" savecurrent=false}
C {vsource.sym} -570 -390 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -570 -340 0 0 {name=l4 lab=0}
C {gnd.sym} -470 -340 0 0 {name=l5 lab=0}
C {gnd.sym} -380 -340 0 0 {name=l6 lab=0}
C {vdd.sym} -570 -440 0 0 {name=l7 lab=VDD}
C {vdd.sym} 50 -310 0 0 {name=l8 lab=VDD}
C {gnd.sym} 40 -150 0 0 {name=l9 lab=0}
C {lab_wire.sym} -100 -150 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 200 -150 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -380 -440 0 0 {name=p3 sig_type=std_logic lab=vinn1}
C {lab_wire.sym} -470 -440 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {devices/code_shown.sym} 240 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 520 -370 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all



ac dec 200 100 20k
plot db(v(out)/v(vinn1))
plot phase(v(out)/v(vinn1))*180/pi
write integrator_AC.raw
.endc
"}
C {lab_wire.sym} 130 -210 0 0 {name=p5 sig_type=std_logic lab=out}
C {capa.sym} 270 -180 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 270 -150 0 0 {name=l10 lab=0}
C {isource.sym} -370 -220 0 0 {name=I0 value=20u}
C {vdd.sym} -370 -250 0 0 {name=l11 lab=VDD}
C {capa.sym} 240 -320 1 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 190 -320 0 0 {name=p6 sig_type=std_logic lab=vinn}
C {res.sym} 140 -420 1 0 {name=R1
value=16M
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 210 -420 0 0 {name=p7 sig_type=std_logic lab=vinn}
C {lab_wire.sym} 80 -420 0 0 {name=p8 sig_type=std_logic lab=vinn1}
