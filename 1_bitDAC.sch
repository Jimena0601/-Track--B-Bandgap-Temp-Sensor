v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 90 70 90 {lab=vin_dac}
N 110 -70 110 60 {lab=#net1}
N 50 -100 70 -100 {lab=vin_dac}
N 110 -130 110 -100 {lab=AVDD}
N 110 120 110 140 {lab=AGND}
N 440 -20 570 -20 {lab=out}
N 440 100 570 100 {lab=out}
N 440 160 570 160 {lab=-VREF}
N 610 130 650 130 {lab=vin_dac}
N 610 -50 650 -50 {lab=vin_dac}
N 440 -80 570 -80 {lab=+VREF}
N 510 -20 510 100 {lab=out}
N 400 -50 400 130 {lab=#net1}
N 110 10 400 10 {lab=#net1}
N 50 -100 50 90 {lab=vin_dac}
N 110 -140 110 -130 {lab=AVDD}
N 440 130 440 160 {lab=-VREF}
N 440 -80 440 -50 {lab=+VREF}
N 110 90 110 130 {lab=AGND}
N 530 -50 570 -50 {lab=AGND}
N 520 130 570 130 {lab=AVDD}
C {symbols/nfet_03v3.sym} 90 90 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 90 -100 0 0 {name=M9
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
C {symbols/pfet_03v3.sym} 420 -50 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 590 -50 0 1 {name=M2
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
C {symbols/nfet_03v3.sym} 420 130 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 590 130 0 1 {name=M4
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
C {lab_wire.sym} 650 130 0 0 {name=p5 sig_type=std_logic lab=vin_dac}
C {lab_wire.sym} 520 130 0 0 {name=p3 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 530 -50 0 0 {name=p4 sig_type=std_logic lab=AGND}
C {ipin.sym} 50 10 0 0 {name=p8 lab=vin_dac}
C {lab_wire.sym} 650 -50 0 0 {name=p1 sig_type=std_logic lab=vin_dac}
C {devices/code_shown.sym} 760 160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {opin.sym} 510 50 0 0 {name=p11 lab=out}
C {ipin.sym} 110 -140 0 0 {name=p6 lab=AVDD}
C {ipin.sym} 110 140 0 0 {name=p7 lab=AGND}
C {ipin.sym} 530 -80 0 0 {name=p10 lab=+VREF}
C {ipin.sym} 520 160 0 0 {name=p12 lab=-VREF}
