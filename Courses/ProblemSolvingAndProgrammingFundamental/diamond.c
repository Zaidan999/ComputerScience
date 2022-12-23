#include<stdio.h>

int main(){
	int n, mid = 0, midEnd = 0, midStart = 0;
	printf("Input the diamond size: ");
	scanf("%d",&n);
	if(n<0){
		printf("You have entered negative number (%d)!\nI've made it positive (%d)\n",n,-n);
		n=-n;
	}
	n = n%2 ? n:n+1;
	printf("You've expected: %dx%d matrix.\n",n,n);

	midEnd = midStart = mid = n / 2 + 1;
	int VL = 179;
	int HZ = 196;
	int PL = 197;
	int CR = 254;

	for(int row = 1; row <= n; row++){	
		if(row <= mid){ 
			midEnd--; midStart++;
		}else{ 
			midEnd++; midStart--;
		}
		for(int col=1; col<=n; col++){	
			if(col < midStart)
				printf("/");
			else if(col > midEnd)
				printf("/");
			else if(col == mid)
				printf("%c", VL);
			else
				printf(" ");
		}
		printf("\n");
	}
	return 0;
}