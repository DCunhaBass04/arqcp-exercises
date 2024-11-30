#include "function.h"
#include <stdio.h>

unsigned int build_date(int year, int month, int day){
	return (year << 16) | (day << 8) | month;
}

int main(void) {
	int year1 = 2023, month1 = 04, day1 = 20;
	int year2 = 2023, month2 = 03, day2 = 22;
	
	unsigned int date1 = build_date(year1,month1,day1);
	unsigned int date2 = build_date(year2,month2,day2);
	
	printf("%d/%d/%d	0b%b\n", day1,month1,year1,date1);
	printf("%d/%d/%d	0b%b\n", day2,month2,year2,date2);
	
	printf("greater date:	0b%b\n", greater_date(date1, date2));

	return 0;
}

