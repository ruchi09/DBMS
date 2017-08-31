#include<stdio.h>
#include<ctype.h>

struct res{

   char LHS[5];
   char RHS[5];
};


int main()
{
   int n;
   char dep[20];
   struct res r1[50];

   printf("\n Enter the number of dependencies :");
   scanf("%d",&n);
   for(int i=0;i<n;i++)
   {
      int j=0,k=0;
      
      printf("\nEnter  Fd %d (e.g. AB->C):",i+1);
      scanf("%s",dep);
      while(isalnum(dep[j]))
      {
         r1[i].LHS[j]=dep[j];
         j++;
      }
      
      
      
      while(dep[j])
      {
       if(isalnum(dep[j]))
         r1[i].RHS[k++]=dep[j];
         j++;
      }      
   
   }

   for(int i=0;i<n;i++)
   {
      printf("%s ,%s\n",r1[i].LHS,r1[i].RHS);
   }
return 0;
}
