set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 500                        ;# max packet in ifq
set val(nn)     11                         ;# number of mobilenodes
set opt(seed)		0.0
set val(rp)     AODV                       ;# routing protocol
set val(x)      1237                       ;# X dimension of topography
set val(y)      751                        ;# Y dimension of topography
set val(stop)   200.0                      ;# time of simulation end

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
set chan [new $val(chan)];

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

set n0 [$ns node]
$ns at 0.0 "$n0 label AccessPoint"
$n0 color "Red"
$ns at 0.0 "$n0 color Red"
$n0 set X_ 901
$n0 set Y_ 402
$n0 set Z_ 0.0
$ns initial_node_pos $n0 40
set n1 [$ns node]
$ns at 0.0 "$n1 label Node"
$n1 set X_ 901
$n1 set Y_ 651
$n1 set Z_ 0.0
$ns initial_node_pos $n1 40
set n2 [$ns node]
$ns at 0.0 "$n2 label Node"
$n2 set X_ 1056
$n2 set Y_ 596
$n2 set Z_ 0.0
$ns initial_node_pos $n2 40
set n3 [$ns node]
$ns at 0.0 "$n3 label Node"
$n3 set X_ 1137
$n3 set Y_ 478
$n3 set Z_ 0.0
$ns initial_node_pos $n3 40
set n4 [$ns node]
$ns at 0.0 "$n4 label Node"
$n4 set X_ 1136
$n4 set Y_ 327
$n4 set Z_ 0.0
$ns initial_node_pos $n4 40
set n5 [$ns node]
$ns at 0.0 "$n5 label Node"
$n5 set X_ 1050
$n5 set Y_ 207
$n5 set Z_ 0.0
$ns initial_node_pos $n5 40
set n6 [$ns node]
$ns at 0.0 "$n6 label Node"
$n6 set X_ 927
$n6 set Y_ 156
$n6 set Z_ 0.0
$ns initial_node_pos $n6 40
set n7 [$ns node]
$ns at 0.0 "$n7 label Node"
$n7 set X_ 788
$n7 set Y_ 179
$n7 set Z_ 0.0
$ns initial_node_pos $n7 40
set n8 [$ns node]
$ns at 0.0 "$n8 label Node"
$n8 set X_ 685
$n8 set Y_ 284
$n8 set Z_ 0.0
$ns initial_node_pos $n8 40
set n9 [$ns node]
$ns at 0.0 "$n9 label Node"
$n9 set X_ 659
$n9 set Y_ 443
$n9 set Z_ 0.0
$ns initial_node_pos $n9 40
set n10 [$ns node]
$ns at 0.0 "$n10 label Node"
$n10 set X_ 738
$n10 set Y_ 591
$n10 set Z_ 0.0
$ns initial_node_pos $n10 40

set tcp0 [new Agent/TCP]
$ns attach-agent $n1 $tcp0
set sink1 [new Agent/TCPSink]
$ns attach-agent $n0 $sink1
$ns connect $tcp0 $sink1
$tcp0 set packetSize_ 1500

set tcp2 [new Agent/TCP]
$ns attach-agent $n2 $tcp2
set sink3 [new Agent/TCPSink]
$ns attach-agent $n0 $sink3
$ns connect $tcp2 $sink3
$tcp2 set packetSize_ 1500

set tcp4 [new Agent/TCP]
$ns attach-agent $n3 $tcp4
set sink5 [new Agent/TCPSink]
$ns attach-agent $n0 $sink5
$ns connect $tcp4 $sink5
$tcp4 set packetSize_ 1500

#Setup a TCP connection
set tcp6 [new Agent/TCP]
$ns attach-agent $n4 $tcp6
set sink7 [new Agent/TCPSink]
$ns attach-agent $n0 $sink7
$ns connect $tcp6 $sink7
$tcp6 set packetSize_ 1500

#Setup a TCP connection
set tcp8 [new Agent/TCP]
$ns attach-agent $n5 $tcp8
set sink9 [new Agent/TCPSink]
$ns attach-agent $n0 $sink9
$ns connect $tcp8 $sink9
$tcp8 set packetSize_ 1500

#Setup a TCP connection
set tcp10 [new Agent/TCP]
$ns attach-agent $n6 $tcp10
set sink11 [new Agent/TCPSink]
$ns attach-agent $n0 $sink11
$ns connect $tcp10 $sink11
$tcp10 set packetSize_ 1500

#Setup a TCP connection
set tcp12 [new Agent/TCP]
$ns attach-agent $n7 $tcp12
set sink13 [new Agent/TCPSink]
$ns attach-agent $n0 $sink13
$ns connect $tcp12 $sink13
$tcp12 set packetSize_ 1500

#Setup a TCP connection
set tcp14 [new Agent/TCP]
$ns attach-agent $n8 $tcp14
set sink15 [new Agent/TCPSink]
$ns attach-agent $n0 $sink15
$ns connect $tcp14 $sink15
$tcp14 set packetSize_ 1500

#Setup a TCP connection
set tcp16 [new Agent/TCP]
$ns attach-agent $n9 $tcp16
set sink17 [new Agent/TCPSink]
$ns attach-agent $n0 $sink17
$ns connect $tcp16 $sink17
$tcp16 set packetSize_ 1500

#Setup a TCP connection
set tcp18 [new Agent/TCP]
$ns attach-agent $n10 $tcp18
set sink19 [new Agent/TCPSink]
$ns attach-agent $n0 $sink19
$ns connect $tcp18 $sink19
$tcp18 set packetSize_ 1500

set ftp0 [new Application/FTP]
$ftp0 attach-agent $tcp0
$ns at 0.0 "$ftp0 start"
$ns at 200.0 "$ftp0 stop"


set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp2
$ns at 20.0 "$ftp1 start"
$ns at 200.0 "$ftp1 stop"


set ftp2 [new Application/FTP]
$ftp2 attach-agent $tcp4
$ns at 40.0 "$ftp2 start"
$ns at 200.0 "$ftp2 stop"


set ftp3 [new Application/FTP]
$ftp3 attach-agent $tcp6
$ns at 60.0 "$ftp3 start"
$ns at 200.0 "$ftp3 stop"


set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp8
$ns at 80.0 "$ftp4 start"
$ns at 200.0 "$ftp4 stop"


set ftp5 [new Application/FTP]
$ftp5 attach-agent $tcp10
$ns at 100.0 "$ftp5 start"
$ns at 200.0 "$ftp5 stop"


set ftp6 [new Application/FTP]
$ftp6 attach-agent $tcp12
$ns at 120.0 "$ftp6 start"
$ns at 200.0 "$ftp6 stop"


set ftp7 [new Application/FTP]
$ftp7 attach-agent $tcp14
$ns at 140.0 "$ftp7 start"
$ns at 200.0 "$ftp7 stop"


set ftp8 [new Application/FTP]
$ftp8 attach-agent $tcp16
$ns at 160.0 "$ftp8 start"
$ns at 200.0 "$ftp8 stop"


set ftp9 [new Application/FTP]
$ftp9 attach-agent $tcp18
$ns at 180.0 "$ftp9 start"
$ns at 200.0 "$ftp9 stop"

$ns at 200.0 "finish"

for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
