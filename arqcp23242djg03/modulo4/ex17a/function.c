#include <stdio.h>

unsigned int greater_date(unsigned int date1, unsigned int date2){	
	unsigned short year1 = (unsigned short)((date1 & 0xFFFF0000) >> 16);
	unsigned short year2 = (unsigned short)((date2 & 0xFFFF0000) >> 16);
	
	//printf("year1:	%hd\nyear2:	%hd\n",year1,year2);
	
	unsigned char month1 = (unsigned char)(date1 & 0x000000FF);
	unsigned char month2 = (unsigned char)(date2 & 0x000000FF);
	
	//printf("month1:	%c\nmonth2:	%c\n",month1,month2);
	
	unsigned char day1 = (unsigned char)((date1 & 0x0000FF00) >> 8);
	unsigned char day2 = (unsigned char)((date2 & 0x0000FF00) >> 8);
	
	//printf("day1:	%c\nday2:	%c\n",day1,day2);
	
	if(year1 > year2){
		return date1;
	} else if(year2 > year1){
		return date2;
	}
	
	if(month1 > month2){
		return date1;
	} else if(month2 > month1){
		return date2;
	}
	
	if(day1 > day2){
		return date1;
	} else {
		return date2;
	}
}

