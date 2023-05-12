* Krzysztof Nazar 27/03/2023;
* OTH Zada Software overview A;
* Do a loop;


* create a dataset to load or populate;
data investone;
principal = 1000;
rate = 0.4;

do month=1 to 12;
	interest = principal*(rate/12);
	principal+interest;
	output; * print the result;
	end;

proc print data=investone;
	format interest 6.2;
run;

