BEGIN{
	s0=0
	s1=0
	s2=0
	s3=0
	s4=0

	p0=0
	p1=0
	p2=0
	p3=0
	p4=0

	e0=0
	e1=0
	e2=0
	e3=0
	e4=0

	}
{
	if($1=="s"&& $3=="_0_" && $4=="AGT")
	{
		s0++
		p0=p0+$8
		e0=$2
	}
	if($1=="s"&& $3=="_1_" && $4=="AGT")
	{
		s1++
		p1=p1+$8
		e1=$2
	}
	if($1=="s" && $3=="_2_" && $4=="AGT")
	{
		s2++
		p2=p2+$8
		e2=$2
	}

	if($1=="s"&& $3=="_3_" && $4=="AGT")
	{
		s3++
		p3=p3+$8
		e3=$2
	}
	if($1=="s" && $3=="_4_" && $4=="AGT")
	{
		s4++
		p4=p4+$8
		e4=$2
	}




}
END{
printf("Density for n0 : %f \n", ((s0*p0*8)/(e0*1000000)));
printf("Density for n1 : %f \n", ((s1*p1*8)/(e1*1000000)));
printf("Density for n2 : %f \n", ((s2*p2*8)/(e2*1000000)));
printf("Density for n3 : %f \n", ((s3*p3*8)/(e3*1000000)));
printf("Density for n4 : %f \n", ((s4*p4*8)/(e4*1000000)));

}
