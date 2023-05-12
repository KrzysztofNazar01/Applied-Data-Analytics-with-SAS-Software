* Krzysztof Nazar 27/03/2023;
* OTH Zada Software overview B;
* Do nested a loop;

data investtwo;
rate = 0.05;
do year=1 to 20; *20 years;
	principal+2000; 
	do month=1 to 12; * 12 months --> one year;
		interest=principal*(rate/12);
		principal+interest;
		output;
		end; *end of the year;
end; * end of the 20 years period;
proc print data=investtwo;
	format interest 6.2;
run;

