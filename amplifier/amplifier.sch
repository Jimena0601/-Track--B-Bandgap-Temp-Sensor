v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -150 120 -150 {lab=#net1}
N -50 -280 -50 -210 {lab=#net2}
N 120 -280 120 -210 {lab=out}
N -50 -340 120 -340 {lab=VDD}
N -10 -310 80 -310 {lab=#net2}
N -50 -250 20 -250 {lab=#net2}
N 20 -310 20 -250 {lab=#net2}
N -50 -340 -50 -310 {lab=VDD}
N 120 -340 120 -310 {lab=VDD}
N -50 -180 120 -180 {lab=0}
N 30 -150 30 -120 {lab=#net1}
N 30 -60 30 -30 {lab=0}
N -190 -90 -10 -90 {lab=#net3}
N -220 -220 -220 -120 {lab=#net3}
N -220 -160 -160 -160 {lab=#net3}
N -160 -160 -160 -90 {lab=#net3}
N -220 -60 -220 -30 {lab=0}
N -540 -250 -540 -230 {lab=0}
N -440 -250 -440 -230 {lab=0}
N -350 -250 -350 -230 {lab=0}
N -540 -330 -540 -310 {lab=VDD}
N -350 -340 -350 -310 {lab=vinn}
N -440 -340 -440 -310 {lab=vinp}
N -120 -180 -90 -180 {lab=vinp}
N 160 -180 190 -180 {lab=vinn}
N 120 -240 260 -240 {lab=out}
N 30 -90 30 -50 {lab=0}
N -220 -90 -220 -50 {lab=0}
C {title.sym} -20 40 0 0 {name=l1 author="Jimena Regina"}
C {symbols/nfet_03v3.sym} -70 -180 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 140 -180 0 1 {name=M2
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
C {symbols/pfet_03v3.sym} -30 -310 0 1 {name=M3
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
C {symbols/pfet_03v3.sym} 100 -310 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 10 -90 0 0 {name=M5
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
C {gnd.sym} 30 -30 0 0 {name=l2 lab=0}
C {symbols/nfet_03v3.sym} -200 -90 0 1 {name=M6
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
C {gnd.sym} -220 -30 0 0 {name=l3 lab=0}
C {vsource.sym} -440 -280 0 0 {name=V1 value="1.5 AC 0.5" savecurrent=false}
C {vsource.sym} -350 -280 0 0 {name=V2 value="1.5 AC -0.5" savecurrent=false}
C {vsource.sym} -540 -280 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -540 -230 0 0 {name=l4 lab=0}
C {gnd.sym} -440 -230 0 0 {name=l5 lab=0}
C {gnd.sym} -350 -230 0 0 {name=l6 lab=0}
C {vdd.sym} -540 -330 0 0 {name=l7 lab=VDD}
C {vdd.sym} 40 -340 0 0 {name=l8 lab=VDD}
C {gnd.sym} 30 -180 0 0 {name=l9 lab=0}
C {lab_wire.sym} -110 -180 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 190 -180 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -350 -330 0 0 {name=p3 sig_type=std_logic lab=vinn}
C {lab_wire.sym} -440 -330 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {devices/code_shown.sym} 230 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 510 -400 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all



ac dec 100 1 1G
plot db(v(out))
plot phase(v(out))*180/pi
write amplifier.raw
.endc
"}
C {lab_wire.sym} 120 -240 0 0 {name=p5 sig_type=std_logic lab=out}
C {capa.sym} 260 -210 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 260 -180 0 0 {name=l10 lab=0}
C {isource.sym} -220 -250 0 0 {name=I0 value=20u}
C {vdd.sym} -220 -280 0 0 {name=l11 lab=VDD}
C {devices/code_shown.sym} 250 -570 0 0 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
op
print v(out)
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
write amplifier.raw
.endc
"}
