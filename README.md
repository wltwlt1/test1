#include <stdio.h>

int index(SString S,SString T){
	int i=1;
	int j=1;
	int m=0;
	while(i<=S.length && j<=T.length){
		if(S.ch[i]==T.ch[j]){
		   i++;
		   j++;
		   m++;
		}
		else{
			i=i-m+1;
			j=1;
			
		}
	}if(m==T.length)
		return 1;
	else 
		return 0;
}


int index_KMP(SString S,SString T,int next[]){
	int i=1;
	int j=1;
	while(i<=S.length && j<=T.length){
		if(S.ch[i]==T.ch[j] || j==0){
		   i++;
		   j++;

		}
		else{
			j=next[j];
			
			
		}
	}
} 
int next_write(SString T){
	int next[T.length];
	int j=1;
	for(int i=1;i<=T.length;i++){
		if(i==1)
			next[i]=0;
		j++;
	}
}
int KMP_improve_next(SString T,int next[]){
	int nextval[T.length];
	nextval[1]=0;
	int i=2;
	while(i<=T.length){
		if(T.ch[next[i]]==T.ch[i])
			nextval[i]=next[next[i]];
		else
			nextval[i]=next[i];
		i++;
	}
	
}
int main()
{
  
   return 0;
}
