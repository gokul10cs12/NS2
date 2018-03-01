BEGIN{
	s1=0
	s2=0
	s3=0
	s4=0
	s5=0
	s6=0
	s7=0
	s8=0
	s9=0
	s10=0

	p1=0
	p2=0
	p3=0
	p4=0
	p5=0
	p6=0
	p7=0
	p8=0
	p9=0
	p10=0

	e1=0
	e2=0
	e3=0
	e4=0
	e5=0
	e6=0
	e7=0
	e8=0
	e9=0
	e10=0
	}
{
	if($1=="r"&& $3=="_1_" && $4=="AGT")
	{
		s1++
		p1=p1+$8
		e1=$2
	}
	if($1=="r" && $3=="_2_" && $4=="AGT")
	{
		s2++
		p2=p2+$8
		e2=$2
	}

	if($1=="r"&& $3=="_3_" && $4=="AGT")
	{
		s3++
		p3=p3+$8
		e3=$2
	}
	if($1=="r" && $3=="_4_" && $4=="AGT")
	{
		s4++
		p4=p4+$8
		e4=$2
	}
	if($1=="r"&& $3=="_5_" && $4=="AGT")
	{
		s5++
		p5=p5+$8
		e5=$2
	}

	if($1=="r"&& $3=="_6_" && $4=="AGT")
	{
		s6++
		p6=p6+$8
		e6=$2
	}

	if($1=="r"&& $3=="_7_" && $4=="AGT")
	{
		s7++
		p7=p7+$8
		e7=$2
	}

	if($1=="r"&& $3=="_8_" && $4=="AGT")
	{
		s8++
		p8=p8+$8
		e8=$2
	}

	if($1=="r"&& $3=="_9_" && $4=="AGT")
	{
		s9++
		p9=p9+$8
		e9=$2
	}

	if($1=="r"&& $3=="_10_" && $4=="AGT")
	{
		s10++
		p10=p10+$8
		e10=$2
	}



}
END{
printf("The Throughput from n1 to n0: %f Mbps \n", ((s1*p1*8)/(e1*1000000)));
printf("The Throughput from n2 to n0: %f Mbps \n", ((s2*p2*8)/(e2*1000000)));
printf("The Throughput from n3 to n0: %f Mbps \n", ((s3*p3*8)/(e3*1000000)));
printf("The Throughput from n4 to n0: %f Mbps \n", ((s4*p4*8)/(e4*1000000)));
printf("The Throughput from n5 to n0: %f Mbps \n", ((s5*p5*8)/(e5*1000000)));
printf("The Throughput from n6 to n0: %f Mbps \n", ((s6*p6*8)/(e6*1000000)));
printf("The Throughput from n7 to n0: %f Mbps \n", ((s7*p7*8)/(e7*1000000)));
printf("The Throughput from n8 to n0: %f Mbps \n", ((s8*p8*8)/(e8*1000000)));
printf("The Throughput from n9 to n0: %f Mbps \n", ((s9*p9*8)/(e9*1000000)));
printf("The Throughput from n10 to n0: %f Mbps \n", ((s10*p10*8)/(e10*1000000)));
}
