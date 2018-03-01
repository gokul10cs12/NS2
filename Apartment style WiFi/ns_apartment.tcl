set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set opt(seed)		2.0
set val(nn)     55                         ;# number of mobilenodes
set val(rp)     AODV                       ;# routing protocol
set val(x)      2489                      ;# X dimension of topography
set val(y)      3623                      ;# Y dimension of topography
set val(stop)   80.0                         ;# time of simulation end

if {$opt(seed) > 0} {
	puts "Seeding Random number generator with $opt(seed)\n"
	ns-random $opt(seed)
}

set ns [new Simulator]
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam out.nam &
    exit 0
}

set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

set tracefile [open out.tr w]
$ns trace-all $tracefile

set namfile [open out.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel
$ns node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON

#Create 55 nodes
set n0 [$ns node]
$ns at 0.0 "$n0 label AccessPoint0"
$n0 color "Blue"
$ns at 0.0 "$n0 color Blue"
$n0 set X_ 1431
$n0 set Y_ 774
$n0 set Z_ 0.0
$ns initial_node_pos $n0 20
set n1 [$ns node]
$ns at 0.0 "$n1 label AccessPoint1"
$n1 color "Red"
$ns at 0.0 "$n1 color Red"
$n1 set X_ 643
$n1 set Y_ 1200
$n1 set Z_ 0.0
$ns initial_node_pos $n1 20
set n2 [$ns node]
$ns at 0.0 "$n2 label AccessPoint2"
$n2 color "violet"
$ns at 0.0 "$n2 color violet"
$n2 set X_ 2100
$n2 set Y_ 1207
$n2 set Z_ 0.0
$ns initial_node_pos $n2 20
set n3 [$ns node]
$ns at 0.0 "$n3 label AccessPoint3"
$n3 color "green"
$ns at 0.0 "$n3 color green"
$n3 set X_ 696
$n3 set Y_ 298
$n3 set Z_ 0.0
$ns initial_node_pos $n3 20
set n4 [$ns node]
$ns at 0.0 "$n4 label AccessPoint4"
$n4 color "Yellow"
$ns at 0.0 "$n4 color Yellow"
$n4 set X_ 2100
$n4 set Y_ 302
$n4 set Z_ 0.0
$ns initial_node_pos $n4 20
set n5 [$ns node]
$ns at 0.0 "$n5 label Node"
$n5 set X_ 1430
$n5 set Y_ 1022
$n5 set Z_ 0.0
$ns initial_node_pos $n5 20
set n6 [$ns node]
$ns at 0.0 "$n6 label Node"
$n6 set X_ 1562
$n6 set Y_ 985
$n6 set Z_ 0.0
$ns initial_node_pos $n6 20
set n7 [$ns node]
$ns at 0.0 "$n7 label Node"
$n7 set X_ 1656
$n7 set Y_ 879
$n7 set Z_ 0.0
$ns initial_node_pos $n7 20
set n8 [$ns node]
$ns at 0.0 "$n8 label Node"
$n8 set X_ 1678
$n8 set Y_ 743
$n8 set Z_ 0.0
$ns initial_node_pos $n8 20
set n9 [$ns node]
$ns at 0.0 "$n9 label Node"
$n9 set X_ 1612
$n9 set Y_ 609
$n9 set Z_ 0.0
$ns initial_node_pos $n9 20
set n10 [$ns node]
$ns at 0.0 "$n10 label Node"
$n10 set X_ 1490
$n10 set Y_ 537
$n10 set Z_ 0.0
$ns initial_node_pos $n10 20
set n11 [$ns node]
$ns at 0.0 "$n11 label Node"
$n11 set X_ 1337
$n11 set Y_ 544
$n11 set Z_ 0.0
$ns initial_node_pos $n11 20
set n12 [$ns node]
$ns at 0.0 "$n12 label Node"
$n12 set X_ 1215
$n12 set Y_ 649
$n12 set Z_ 0.0
$ns initial_node_pos $n12 20
set n13 [$ns node]
$ns at 0.0 "$n13 label Node"
$n13 set X_ 1186
$n13 set Y_ 822
$n13 set Z_ 0.0
$ns initial_node_pos $n13 20
set n14 [$ns node]
$ns at 0.0 "$n14 label Node"
$n14 set X_ 1274
$n14 set Y_ 968
$n14 set Z_ 0.0
$ns initial_node_pos $n14 20
set n15 [$ns node]
$ns at 0.0 "$n15 label Node"
$n15 set X_ 637
$n15 set Y_ 1443
$n15 set Z_ 0.0
$ns initial_node_pos $n15 20
set n16 [$ns node]
$ns at 0.0 "$n16 label Node"
$n16 set X_ 780
$n16 set Y_ 1406
$n16 set Z_ 0.0
$ns initial_node_pos $n16 20
set n17 [$ns node]
$ns at 0.0 "$n17 label Node"
$n17 set X_ 880
$n17 set Y_ 1264
$n17 set Z_ 0.0
$ns initial_node_pos $n17 20
set n18 [$ns node]
$ns at 0.0 "$n18 label Node"
$n18 set X_ 869
$n18 set Y_ 1099
$n18 set Z_ 0.0
$ns initial_node_pos $n18 20
set n19 [$ns node]
$ns at 0.0 "$n19 label Node"
$n19 set X_ 764
$n19 set Y_ 983
$n19 set Z_ 0.0
$ns initial_node_pos $n19 20
set n20 [$ns node]
$ns at 0.0 "$n20 label Node"
$n20 set X_ 606
$n20 set Y_ 954
$n20 set Z_ 0.0
$ns initial_node_pos $n20 20
set n21 [$ns node]
$ns at 0.0 "$n21 label Node"
$n21 set X_ 480
$n21 set Y_ 1014
$n21 set Z_ 0.0
$ns initial_node_pos $n21 20
set n22 [$ns node]
$ns at 0.0 "$n22 label Node"
$n22 set X_ 406
$n22 set Y_ 1122
$n22 set Z_ 0.0
$ns initial_node_pos $n22 20
set n23 [$ns node]
$ns at 0.0 "$n23 label Node"
$n23 set X_ 416
$n23 set Y_ 1283
$n23 set Z_ 0.0
$ns initial_node_pos $n23 20
set n24 [$ns node]
$ns at 0.0 "$n24 label Node"
$n24 set X_ 514
$n24 set Y_ 1404
$n24 set Z_ 0.0
$ns initial_node_pos $n24 20
set n25 [$ns node]
$ns at 0.0 "$n25 label Node"
$n25 set X_ 2098
$n25 set Y_ 1451
$n25 set Z_ 0.0
$ns initial_node_pos $n25 20
set n26 [$ns node]
$ns at 0.0 "$n26 label Node"
$n26 set X_ 2248
$n26 set Y_ 1406
$n26 set Z_ 0.0
$ns initial_node_pos $n26 20
set n27 [$ns node]
$ns at 0.0 "$n27 label Node"
$n27 set X_ 2332
$n27 set Y_ 1270
$n27 set Z_ 0.0
$ns initial_node_pos $n27 20
set n28 [$ns node]
$ns at 0.0 "$n28 label Node"
$n28 set X_ 2327
$n28 set Y_ 1106
$n28 set Z_ 0.0
$ns initial_node_pos $n28 20
set n29 [$ns node]
$ns at 0.0 "$n29 label Node"
$n29 set X_ 2245
$n29 set Y_ 1009
$n29 set Z_ 0.0
$ns initial_node_pos $n29 20
set n30 [$ns node]
$ns at 0.0 "$n30 label Node"
$n30 set X_ 2119
$n30 set Y_ 962
$n30 set Z_ 0.0
$ns initial_node_pos $n30 20
set n31 [$ns node]
$ns at 0.0 "$n31 label Node"
$n31 set X_ 1985
$n31 set Y_ 988
$n31 set Z_ 0.0
$ns initial_node_pos $n31 20
set n32 [$ns node]
$ns at 0.0 "$n32 label Node"
$n32 set X_ 1885
$n32 set Y_ 1096
$n32 set Z_ 0.0
$ns initial_node_pos $n32 20
set n33 [$ns node]
$ns at 0.0 "$n33 label Node"
$n33 set X_ 1864
$n33 set Y_ 1270
$n33 set Z_ 0.0
$ns initial_node_pos $n33 20
set n34 [$ns node]
$ns at 0.0 "$n34 label Node"
$n34 set X_ 1953
$n34 set Y_ 1404
$n34 set Z_ 0.0
$ns initial_node_pos $n34 20
set n35 [$ns node]
$ns at 0.0 "$n35 label Node"
$n35 set X_ 623
$n35 set Y_ 535
$n35 set Z_ 0.0
$ns initial_node_pos $n35 20
set n36 [$ns node]
$ns at 0.0 "$n36 label Node"
$n36 set X_ 784
$n36 set Y_ 530
$n36 set Z_ 0.0
$ns initial_node_pos $n36 20
set n37 [$ns node]
$ns at 0.0 "$n37 label Node"
$n37 set X_ 900
$n37 set Y_ 441
$n37 set Z_ 0.0
$ns initial_node_pos $n37 20
set n38 [$ns node]
$ns at 0.0 "$n38 label Node"
$n38 set X_ 944
$n38 set Y_ 302
$n38 set Z_ 0.0
$ns initial_node_pos $n38 20
set n39 [$ns node]
$ns at 0.0 "$n39 label Node"
$n39 set X_ 886
$n39 set Y_ 148
$n39 set Z_ 0.0
$ns initial_node_pos $n39 20
set n40 [$ns node]
$ns at 0.0 "$n40 label Node"
$n40 set X_ 771
$n40 set Y_ 61
$n40 set Z_ 0.0
$ns initial_node_pos $n40 20
set n41 [$ns node]
$ns at 0.0 "$n41 label Node"
$n41 set X_ 630
$n41 set Y_ 63
$n41 set Z_ 0.0
$ns initial_node_pos $n41 20
set n42 [$ns node]
$ns at 0.0 "$n42 label Node"
$n42 set X_ 504
$n42 set Y_ 150
$n42 set Z_ 0.0
$ns initial_node_pos $n42 20
set n43 [$ns node]
$ns at 0.0 "$n43 label Node"
$n43 set X_ 453
$n43 set Y_ 298
$n43 set Z_ 0.0
$ns initial_node_pos $n43 20
set n44 [$ns node]
$ns at 0.0 "$n44 label Node"
$n44 set X_ 500
$n44 set Y_ 441
$n44 set Z_ 0.0
$ns initial_node_pos $n44 20
set n45 [$ns node]
$ns at 0.0 "$n45 label Node"
$n45 set X_ 2060
$n45 set Y_ 544
$n45 set Z_ 0.0
$ns initial_node_pos $n45 20
set n46 [$ns node]
$ns at 0.0 "$n46 label Node"
$n46 set X_ 2220
$n46 set Y_ 521
$n46 set Z_ 0.0
$ns initial_node_pos $n46 20
set n47 [$ns node]
$ns at 0.0 "$n47 label Node"
$n47 set X_ 2319
$n47 set Y_ 411
$n47 set Z_ 0.0
$ns initial_node_pos $n47 20
set n48 [$ns node]
$ns at 0.0 "$n48 label Node"
$n48 set X_ 2340
$n48 set Y_ 279
$n48 set Z_ 0.0
$ns initial_node_pos $n48 20
set n49 [$ns node]
$ns at 0.0 "$n49 label Node"
$n49 set X_ 2291
$n49 set Y_ 150
$n49 set Z_ 0.0
$ns initial_node_pos $n49 20
set n50 [$ns node]
$ns at 0.0 "$n50 label Node"
$n50 set X_ 2162
$n50 set Y_ 62
$n50 set Z_ 0.0
$ns initial_node_pos $n50 20
set n51 [$ns node]
$ns at 0.0 "$n51 label Node"
$n51 set X_ 2001
$n51 set Y_ 74
$n51 set Z_ 0.0
$ns initial_node_pos $n51 20
set n52 [$ns node]
$ns at 0.0 "$n52 label Node"
$n52 set X_ 1893
$n52 set Y_ 165
$n52 set Z_ 0.0
$ns initial_node_pos $n52 20
set n53 [$ns node]
$ns at 0.0 "$n53 label Node"
$n53 set X_ 1851
$n53 set Y_ 312
$n53 set Z_ 0.0
$ns initial_node_pos $n53 20
set n54 [$ns node]
$ns at 0.0 "$n54 label Node"
$n54 set X_ 1909
$n54 set Y_ 462
$n54 set Z_ 0.0
$ns initial_node_pos $n54 20

$ns at 1 " $n5 setdest 1440 1030 15 " 
$ns at 1 " $n6 setdest 1599 1033 15 " 
$ns at 1 " $n7 setdest 1705 903 15 " 
$ns at 1 " $n8 setdest 1722 746 15 " 
$ns at 1 " $n9 setdest 1661 575 15 " 
$ns at 1 " $n10 setdest 1514 489 15 " 
$ns at 1 " $n11 setdest 1298 500 15 " 
$ns at 1 " $n12 setdest 1182 631 15 " 
$ns at 1 " $n13 setdest 1131 827 15 " 
$ns at 1 " $n14 setdest 1234 101 15 " 
$ns at 1 " $n15 setdest 634 1495 15 " 
$ns at 1 " $n16 setdest 831 1448 15 " 
$ns at 1 " $n17 setdest 946 1282 15 " 
$ns at 1 " $n18 setdest 827 1140 15 " 
$ns at 1 " $n19 setdest 797 936 15 " 
$ns at 1 " $n20 setdest 581 1057 15 " 
$ns at 1 " $n21 setdest 405 1008 15 " 
$ns at 1 " $n22 setdest 335 1157 15 " 
$ns at 1 " $n23 setdest 343 1310 15 " 
$ns at 1 " $n24 setdest 458 1463 15 " 
$ns at 1 " $n25 setdest 2105 1510 15 " 
$ns at 1 " $n26 setdest 2160 1363 15 " 
$ns at 1 " $n27 setdest 2291 1231 15 " 
$ns at 1 " $n28 setdest 2389 1102 15 " 
$ns at 1 " $n29 setdest 2196 1067 15 " 
$ns at 1 " $n30 setdest 2097 924 15 " 
$ns at 1 " $n31 setdest 2025 1022 15 " 
$ns at 1 " $n32 setdest 1869 1138 15 " 
$ns at 1 " $n33 setdest 1893 1138 15 " 
$ns at 1 " $n34 setdest 1944 1457 15 " 
$ns at 1 " $n35 setdest 581 590 15 " 
$ns at 1 " $n36 setdest 807 582 15 " 
$ns at 1 " $n37 setdest 937 466 15 " 
$ns at 1 " $n38 setdest 1001 298 15 " 
$ns at 1 " $n39 setdest 835 146 15 " 
$ns at 1 " $n40 setdest 743 100 15 " 
$ns at 1 " $n41 setdest 556 66 15 " 
$ns at 1 " $n42 setdest 561 214 15 " 
$ns at 1 " $n43 setdest 463 339 15 " 
$ns at 1 " $n44 setdest 549 500 15 " 
$ns at 1 " $n45 setdest 2014 578 15 " 
$ns at 1 " $n46 setdest 2222 474 15 " 
$ns at 1 " $n47 setdest 2356 418 15 " 
$ns at 1 " $n48 setdest 2294 290 15 " 
$ns at 1 " $n49 setdest 2251 152 15 " 
$ns at 1 " $n50 setdest 2101 14 15 " 
$ns at 1 " $n51 setdest 1952 112 15 " 
$ns at 1 " $n52 setdest 1933 221 15 " 
$ns at 1 " $n53 setdest 1848 344 15 " 
$ns at 1 " $n54 setdest 1999 386 15 " 

set tcp0 [new Agent/TCP]
$ns attach-agent $n5 $tcp0
set sink1 [new Agent/TCPSink]
$ns attach-agent $n0 $sink1
$ns connect $tcp0 $sink1
$tcp0 set packetSize_ 1500


set tcp2 [new Agent/TCP]
$ns attach-agent $n6 $tcp2
set sink3 [new Agent/TCPSink]
$ns attach-agent $n0 $sink3
$ns connect $tcp2 $sink3
$tcp2 set packetSize_ 1500


set tcp4 [new Agent/TCP]
$ns attach-agent $n7 $tcp4
set sink5 [new Agent/TCPSink]
$ns attach-agent $n0 $sink5
$ns connect $tcp4 $sink5
$tcp4 set packetSize_ 1500


set tcp6 [new Agent/TCP]
$ns attach-agent $n8 $tcp6
set sink7 [new Agent/TCPSink]
$ns attach-agent $n0 $sink7
$ns connect $tcp6 $sink7
$tcp6 set packetSize_ 1500


set tcp8 [new Agent/TCP]
$ns attach-agent $n9 $tcp8
set sink9 [new Agent/TCPSink]
$ns attach-agent $n0 $sink9
$ns connect $tcp8 $sink9
$tcp8 set packetSize_ 1500


set tcp10 [new Agent/TCP]
$ns attach-agent $n10 $tcp10
set sink11 [new Agent/TCPSink]
$ns attach-agent $n0 $sink11
$ns connect $tcp10 $sink11
$tcp10 set packetSize_ 1500


set tcp12 [new Agent/TCP]
$ns attach-agent $n11 $tcp12
set sink13 [new Agent/TCPSink]
$ns attach-agent $n0 $sink13
$ns connect $tcp12 $sink13
$tcp12 set packetSize_ 1500


set tcp14 [new Agent/TCP]
$ns attach-agent $n12 $tcp14
set sink15 [new Agent/TCPSink]
$ns attach-agent $n0 $sink15
$ns connect $tcp14 $sink15
$tcp14 set packetSize_ 1500


set tcp16 [new Agent/TCP]
$ns attach-agent $n13 $tcp16
set sink17 [new Agent/TCPSink]
$ns attach-agent $n0 $sink17
$ns connect $tcp16 $sink17
$tcp16 set packetSize_ 1500


set tcp18 [new Agent/TCP]
$ns attach-agent $n14 $tcp18
set sink19 [new Agent/TCPSink]
$ns attach-agent $n0 $sink19
$ns connect $tcp18 $sink19
$tcp18 set packetSize_ 1500


set tcp21 [new Agent/TCP]
$ns attach-agent $n15 $tcp21
set sink22 [new Agent/TCPSink]
$ns attach-agent $n1 $sink22
$ns connect $tcp21 $sink22
$tcp21 set packetSize_ 1500


set tcp23 [new Agent/TCP]
$ns attach-agent $n16 $tcp23
set sink24 [new Agent/TCPSink]
$ns attach-agent $n1 $sink24
$ns connect $tcp23 $sink24
$tcp23 set packetSize_ 1500


set tcp25 [new Agent/TCP]
$ns attach-agent $n17 $tcp25
set sink26 [new Agent/TCPSink]
$ns attach-agent $n1 $sink26
$ns connect $tcp25 $sink26
$tcp25 set packetSize_ 1500


set tcp27 [new Agent/TCP]
$ns attach-agent $n18 $tcp27
set sink28 [new Agent/TCPSink]
$ns attach-agent $n1 $sink28
$ns connect $tcp27 $sink28
$tcp27 set packetSize_ 1500


set tcp29 [new Agent/TCP]
$ns attach-agent $n19 $tcp29
set sink30 [new Agent/TCPSink]
$ns attach-agent $n1 $sink30
$ns connect $tcp29 $sink30
$tcp29 set packetSize_ 1500


set tcp31 [new Agent/TCP]
$ns attach-agent $n20 $tcp31
set sink32 [new Agent/TCPSink]
$ns attach-agent $n1 $sink32
$ns connect $tcp31 $sink32
$tcp31 set packetSize_ 1500


set tcp33 [new Agent/TCP]
$ns attach-agent $n21 $tcp33
set sink34 [new Agent/TCPSink]
$ns attach-agent $n1 $sink34
$ns connect $tcp33 $sink34
$tcp33 set packetSize_ 1500


set tcp35 [new Agent/TCP]
$ns attach-agent $n22 $tcp35
set sink36 [new Agent/TCPSink]
$ns attach-agent $n1 $sink36
$ns connect $tcp35 $sink36
$tcp35 set packetSize_ 1500


set tcp37 [new Agent/TCP]
$ns attach-agent $n23 $tcp37
set sink38 [new Agent/TCPSink]
$ns attach-agent $n1 $sink38
$ns connect $tcp37 $sink38
$tcp37 set packetSize_ 1500


set tcp39 [new Agent/TCP]
$ns attach-agent $n24 $tcp39
set sink40 [new Agent/TCPSink]
$ns attach-agent $n1 $sink40
$ns connect $tcp39 $sink40
$tcp39 set packetSize_ 1500


set tcp41 [new Agent/TCP]
$ns attach-agent $n25 $tcp41
set sink42 [new Agent/TCPSink]
$ns attach-agent $n2 $sink42
$ns connect $tcp41 $sink42
$tcp41 set packetSize_ 1500


set tcp43 [new Agent/TCP]
$ns attach-agent $n26 $tcp43
set sink44 [new Agent/TCPSink]
$ns attach-agent $n2 $sink44
$ns connect $tcp43 $sink44
$tcp43 set packetSize_ 1500


set tcp45 [new Agent/TCP]
$ns attach-agent $n27 $tcp45
set sink46 [new Agent/TCPSink]
$ns attach-agent $n2 $sink46
$ns connect $tcp45 $sink46
$tcp45 set packetSize_ 1500


set tcp47 [new Agent/TCP]
$ns attach-agent $n28 $tcp47
set sink48 [new Agent/TCPSink]
$ns attach-agent $n2 $sink48
$ns connect $tcp47 $sink48
$tcp47 set packetSize_ 1500


set tcp49 [new Agent/TCP]
$ns attach-agent $n29 $tcp49
set sink50 [new Agent/TCPSink]
$ns attach-agent $n2 $sink50
$ns connect $tcp49 $sink50
$tcp49 set packetSize_ 1500


set tcp51 [new Agent/TCP]
$ns attach-agent $n30 $tcp51
set sink52 [new Agent/TCPSink]
$ns attach-agent $n2 $sink52
$ns connect $tcp51 $sink52
$tcp51 set packetSize_ 1500


set tcp53 [new Agent/TCP]
$ns attach-agent $n31 $tcp53
set sink54 [new Agent/TCPSink]
$ns attach-agent $n2 $sink54
$ns connect $tcp53 $sink54
$tcp53 set packetSize_ 1500


set tcp55 [new Agent/TCP]
$ns attach-agent $n32 $tcp55
set sink56 [new Agent/TCPSink]
$ns attach-agent $n2 $sink56
$ns connect $tcp55 $sink56
$tcp55 set packetSize_ 1500


set tcp57 [new Agent/TCP]
$ns attach-agent $n33 $tcp57
set sink58 [new Agent/TCPSink]
$ns attach-agent $n2 $sink58
$ns connect $tcp57 $sink58
$tcp57 set packetSize_ 1500


set tcp59 [new Agent/TCP]
$ns attach-agent $n34 $tcp59
set sink60 [new Agent/TCPSink]
$ns attach-agent $n2 $sink60
$ns connect $tcp59 $sink60
$tcp59 set packetSize_ 1500


set tcp61 [new Agent/TCP]
$ns attach-agent $n35 $tcp61
set sink62 [new Agent/TCPSink]
$ns attach-agent $n3 $sink62
$ns connect $tcp61 $sink62
$tcp61 set packetSize_ 1500


set tcp63 [new Agent/TCP]
$ns attach-agent $n36 $tcp63
set sink64 [new Agent/TCPSink]
$ns attach-agent $n3 $sink64
$ns connect $tcp63 $sink64
$tcp63 set packetSize_ 1500


set tcp65 [new Agent/TCP]
$ns attach-agent $n37 $tcp65
set sink66 [new Agent/TCPSink]
$ns attach-agent $n3 $sink66
$ns connect $tcp65 $sink66
$tcp65 set packetSize_ 1500


set tcp67 [new Agent/TCP]
$ns attach-agent $n38 $tcp67
set sink68 [new Agent/TCPSink]
$ns attach-agent $n3 $sink68
$ns connect $tcp67 $sink68
$tcp67 set packetSize_ 1500


set tcp69 [new Agent/TCP]
$ns attach-agent $n39 $tcp69
set sink70 [new Agent/TCPSink]
$ns attach-agent $n3 $sink70
$ns connect $tcp69 $sink70
$tcp69 set packetSize_ 1500


set tcp71 [new Agent/TCP]
$ns attach-agent $n40 $tcp71
set sink72 [new Agent/TCPSink]
$ns attach-agent $n3 $sink72
$ns connect $tcp71 $sink72
$tcp71 set packetSize_ 1500


set tcp73 [new Agent/TCP]
$ns attach-agent $n41 $tcp73
set sink74 [new Agent/TCPSink]
$ns attach-agent $n3 $sink74
$ns connect $tcp73 $sink74
$tcp73 set packetSize_ 1500


set tcp75 [new Agent/TCP]
$ns attach-agent $n42 $tcp75
set sink76 [new Agent/TCPSink]
$ns attach-agent $n3 $sink76
$ns connect $tcp75 $sink76
$tcp75 set packetSize_ 1500


set tcp77 [new Agent/TCP]
$ns attach-agent $n43 $tcp77
set sink78 [new Agent/TCPSink]
$ns attach-agent $n3 $sink78
$ns connect $tcp77 $sink78
$tcp77 set packetSize_ 1500


set tcp79 [new Agent/TCP]
$ns attach-agent $n44 $tcp79
set sink80 [new Agent/TCPSink]
$ns attach-agent $n3 $sink80
$ns connect $tcp79 $sink80
$tcp79 set packetSize_ 1500


set tcp81 [new Agent/TCP]
$ns attach-agent $n45 $tcp81
set sink82 [new Agent/TCPSink]
$ns attach-agent $n4 $sink82
$ns connect $tcp81 $sink82
$tcp81 set packetSize_ 1500


set tcp83 [new Agent/TCP]
$ns attach-agent $n46 $tcp83
set sink84 [new Agent/TCPSink]
$ns attach-agent $n4 $sink84
$ns connect $tcp83 $sink84
$tcp83 set packetSize_ 1500


set tcp85 [new Agent/TCP]
$ns attach-agent $n47 $tcp85
set sink86 [new Agent/TCPSink]
$ns attach-agent $n4 $sink86
$ns connect $tcp85 $sink86
$tcp85 set packetSize_ 1500


set tcp87 [new Agent/TCP]
$ns attach-agent $n48 $tcp87
set sink88 [new Agent/TCPSink]
$ns attach-agent $n4 $sink88
$ns connect $tcp87 $sink88
$tcp87 set packetSize_ 1500


set tcp89 [new Agent/TCP]
$ns attach-agent $n49 $tcp89
set sink90 [new Agent/TCPSink]
$ns attach-agent $n4 $sink90
$ns connect $tcp89 $sink90
$tcp89 set packetSize_ 1500


set tcp91 [new Agent/TCP]
$ns attach-agent $n50 $tcp91
set sink92 [new Agent/TCPSink]
$ns attach-agent $n4 $sink92
$ns connect $tcp91 $sink92
$tcp91 set packetSize_ 1500


set tcp93 [new Agent/TCP]
$ns attach-agent $n51 $tcp93
set sink94 [new Agent/TCPSink]
$ns attach-agent $n4 $sink94
$ns connect $tcp93 $sink94
$tcp93 set packetSize_ 1500


set tcp95 [new Agent/TCP]
$ns attach-agent $n52 $tcp95
set sink96 [new Agent/TCPSink]
$ns attach-agent $n4 $sink96
$ns connect $tcp95 $sink96
$tcp95 set packetSize_ 1500


set tcp97 [new Agent/TCP]
$ns attach-agent $n53 $tcp97
set sink98 [new Agent/TCPSink]
$ns attach-agent $n4 $sink98
$ns connect $tcp97 $sink98
$tcp97 set packetSize_ 1500


set tcp99 [new Agent/TCP]
$ns attach-agent $n54 $tcp99
set sink100 [new Agent/TCPSink]
$ns attach-agent $n4 $sink100
$ns connect $tcp99 $sink100
$tcp99 set packetSize_ 1500

set ftp0 [new Application/FTP]
$ftp0 attach-agent $tcp0
$ns at 1.0 "$ftp0 start"
$ns at 80.0 "$ftp0 stop"


set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp2
$ns at 1.0 "$ftp1 start"
$ns at 80.0 "$ftp1 stop"


set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp4
$ns at 1.0 "$ftp2 start"
$ns at 80.0 "$ftp2 stop"


set ftp3 [new Application/FTP]
$ftp3 attach-agent $tcp6
$ns at 1.0 "$ftp3 start"
$ns at 80.0 "$ftp3 stop"


set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp8
$ns at 1.0 "$ftp4 start"
$ns at 80.0 "$ftp4 stop"


set ftp5 [new Application/FTP]
$ftp5 attach-agent $tcp10
$ns at 1.0 "$ftp5 start"
$ns at 80.0 "$ftp5 stop"


set ftp6 [new Application/FTP]
$ftp6 attach-agent $tcp12
$ns at 1.0 "$ftp6 start"
$ns at 80.0 "$ftp6 stop"


set ftp7 [new Application/FTP]
$ftp7 attach-agent $tcp14
$ns at 1.0 "$ftp7 start"
$ns at 80.0 "$ftp7 stop"


set ftp8 [new Application/FTP]
$ftp8 attach-agent $tcp16
$ns at 1.0 "$ftp8 start"
$ns at 80.0 "$ftp8 stop"


set ftp9 [new Application/FTP]
$ftp9 attach-agent $tcp18
$ns at 1.0 "$ftp9 start"
$ns at 80.0 "$ftp9 stop"


set ftp10 [new Application/FTP]
$ftp10 attach-agent $tcp21
$ns at 1.0 "$ftp10 start"
$ns at 80.0 "$ftp10 stop"


set ftp11 [new Application/FTP]
$ftp11 attach-agent $tcp23
$ns at 1.0 "$ftp11 start"
$ns at 80.0 "$ftp11 stop"


set ftp12 [new Application/FTP]
$ftp12 attach-agent $tcp25
$ns at 1.0 "$ftp12 start"
$ns at 80.0 "$ftp12 stop"


set ftp13 [new Application/FTP]
$ftp13 attach-agent $tcp27
$ns at 1.0 "$ftp13 start"
$ns at 80.0 "$ftp13 stop"


set ftp14 [new Application/FTP]
$ftp14 attach-agent $tcp29
$ns at 1.0 "$ftp14 start"
$ns at 80.0 "$ftp14 stop"


set ftp15 [new Application/FTP]
$ftp15 attach-agent $tcp31
$ns at 1.0 "$ftp15 start"
$ns at 80.0 "$ftp15 stop"


set ftp16 [new Application/FTP]
$ftp16 attach-agent $tcp33
$ns at 1.0 "$ftp16 start"
$ns at 80.0 "$ftp16 stop"


set ftp17 [new Application/FTP]
$ftp17 attach-agent $tcp35
$ns at 1.0 "$ftp17 start"
$ns at 80.0 "$ftp17 stop"


set ftp18 [new Application/FTP]
$ftp18 attach-agent $tcp37
$ns at 1.0 "$ftp18 start"
$ns at 80.0 "$ftp18 stop"


set ftp19 [new Application/FTP]
$ftp19 attach-agent $tcp39
$ns at 1.0 "$ftp19 start"
$ns at 80.0 "$ftp19 stop"


set ftp20 [new Application/FTP]
$ftp20 attach-agent $tcp41
$ns at 1.0 "$ftp20 start"
$ns at 80.0 "$ftp20 stop"


set ftp21 [new Application/FTP]
$ftp21 attach-agent $tcp43
$ns at 1.0 "$ftp21 start"
$ns at 80.0 "$ftp21 stop"


set ftp22 [new Application/FTP]
$ftp22 attach-agent $tcp45
$ns at 1.0 "$ftp22 start"
$ns at 80.0 "$ftp22 stop"


set ftp23 [new Application/FTP]
$ftp23 attach-agent $tcp47
$ns at 1.0 "$ftp23 start"
$ns at 80.0 "$ftp23 stop"


set ftp24 [new Application/FTP]
$ftp24 attach-agent $tcp49
$ns at 1.0 "$ftp24 start"
$ns at 80.0 "$ftp24 stop"


set ftp25 [new Application/FTP]
$ftp25 attach-agent $tcp51
$ns at 1.0 "$ftp25 start"
$ns at 80.0 "$ftp25 stop"


set ftp26 [new Application/FTP]
$ftp26 attach-agent $tcp53
$ns at 1.0 "$ftp26 start"
$ns at 80.0 "$ftp26 stop"


set ftp27 [new Application/FTP]
$ftp27 attach-agent $tcp55
$ns at 1.0 "$ftp27 start"
$ns at 80.0 "$ftp27 stop"


set ftp28 [new Application/FTP]
$ftp28 attach-agent $tcp57
$ns at 1.0 "$ftp28 start"
$ns at 80.0 "$ftp28 stop"


set ftp29 [new Application/FTP]
$ftp29 attach-agent $tcp59
$ns at 1.0 "$ftp29 start"
$ns at 80.0 "$ftp29 stop"


set ftp30 [new Application/FTP]
$ftp30 attach-agent $tcp61
$ns at 1.0 "$ftp30 start"
$ns at 80.0 "$ftp30 stop"


set ftp31 [new Application/FTP]
$ftp31 attach-agent $tcp63
$ns at 1.0 "$ftp31 start"
$ns at 80.0 "$ftp31 stop"


set ftp32 [new Application/FTP]
$ftp32 attach-agent $tcp65
$ns at 1.0 "$ftp32 start"
$ns at 80.0 "$ftp32 stop"


set ftp33 [new Application/FTP]
$ftp33 attach-agent $tcp67
$ns at 1.0 "$ftp33 start"
$ns at 80.0 "$ftp33 stop"


set ftp34 [new Application/FTP]
$ftp34 attach-agent $tcp69
$ns at 1.0 "$ftp34 start"
$ns at 80.0 "$ftp34 stop"


set ftp35 [new Application/FTP]
$ftp35 attach-agent $tcp71
$ns at 1.0 "$ftp35 start"
$ns at 80.0 "$ftp35 stop"


set ftp36 [new Application/FTP]
$ftp36 attach-agent $tcp73
$ns at 1.0 "$ftp36 start"
$ns at 80.0 "$ftp36 stop"


set ftp37 [new Application/FTP]
$ftp37 attach-agent $tcp75
$ns at 1.0 "$ftp37 start"
$ns at 80.0 "$ftp37 stop"


set ftp38 [new Application/FTP]
$ftp38 attach-agent $tcp77
$ns at 1.0 "$ftp38 start"
$ns at 80.0 "$ftp38 stop"


set ftp39 [new Application/FTP]
$ftp39 attach-agent $tcp79
$ns at 1.0 "$ftp39 start"
$ns at 80.0 "$ftp39 stop"


set ftp40 [new Application/FTP]
$ftp40 attach-agent $tcp81
$ns at 1.0 "$ftp40 start"
$ns at 80.0 "$ftp40 stop"


set ftp41 [new Application/FTP]
$ftp41 attach-agent $tcp83
$ns at 1.0 "$ftp41 start"
$ns at 80.0 "$ftp41 stop"


set ftp42 [new Application/FTP]
$ftp42 attach-agent $tcp85
$ns at 1.0 "$ftp42 start"
$ns at 80.0 "$ftp42 stop"


set ftp43 [new Application/FTP]
$ftp43 attach-agent $tcp87
$ns at 1.0 "$ftp43 start"
$ns at 80.0 "$ftp43 stop"


set ftp44 [new Application/FTP]
$ftp44 attach-agent $tcp89
$ns at 1.0 "$ftp44 start"
$ns at 80.0 "$ftp44 stop"


set ftp45 [new Application/FTP]
$ftp45 attach-agent $tcp91
$ns at 1.0 "$ftp45 start"
$ns at 80.0 "$ftp45 stop"


set ftp46 [new Application/FTP]
$ftp46 attach-agent $tcp93
$ns at 1.0 "$ftp46 start"
$ns at 80.0 "$ftp46 stop"


set ftp47 [new Application/FTP]
$ftp47 attach-agent $tcp95
$ns at 1.0 "$ftp47 start"
$ns at 80.0 "$ftp47 stop"


set ftp48 [new Application/FTP]
$ftp48 attach-agent $tcp97
$ns at 1.0 "$ftp48 start"
$ns at 80.0 "$ftp48 stop"


set ftp49 [new Application/FTP]
$ftp49 attach-agent $tcp99
$ns at 1.0 "$ftp49 start"
$ns at 80.0 "$ftp49 stop"


$ns at 100.0 "finish"
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
