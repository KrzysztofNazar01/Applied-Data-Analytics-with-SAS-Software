* Krzysztof Nazar 27/03/2023;
* OTH Zada Software overview C;
* Do a loop;

data investthree;
rate = 0.06;
year = 1;

do until (principal >= 70000);
principal+2000; * at the beginning of each year add 2000 to your acocunt;
	do month=1 to 12;
		interest= principal*(rate/12);
		principal+interest;
		output;
		end;
year+1;
end;
proc print data=investthree;
	format interest 6.2;
run;
