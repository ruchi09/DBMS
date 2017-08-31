#include<stdio.h>
#include<mysql.h>
#include<stdlib.h>
#include<string.h>

  char query[100];
  char q2[50];

void Conditions( int op)
{
   system("clear");
   char cond[11];
   int op1;
   switch(op)
   {  
      
      case 1:  printf("\n\n----------CONDITION---------\n\n  1)Pno\n  2)Pname\n  3)Weight\n  4)Color\n  5)City\n  6)No condition\nEnter condition variable: ");
               scanf("%d",&op1);
               switch(op1)
               {
                  case 1: strcat(query, " where Pno ");
                           printf("\nEnter condition for Part no : ");
                           scanf("%s",cond);
                           strcat(query,cond);break;
                                         
               
                  case 2: strcat(query, "  where Pname ");
                           printf("\nEnter condition for Part name : ");
                           scanf("%s",cond);
                           strcat(query,cond);break;
               
               
                  case 3: strcat(query, " where Weight ");
                           printf("\nEnter condition for Weight : ");
                           scanf("%s",cond);
                           strcat(query,cond);break;
                           
                           
                  case 4: strcat(query, " where Colour ");
                           printf("\nEnter condition for Color : ");
                           scanf("%s",cond);
                           strcat(query,cond);break;
                           
                                                
                 case 5: strcat(query, " where City ");
                           printf("\nEnter condition for City : ");
                           scanf("%s",cond);
                           strcat(query,cond);break;
                           
                           
                 case 6:break;
               
               
               
               }break;
               
               
               
       case 2 : printf("\n\n----------CONDITION---------\n\n  1)Project No\n  2)Project name\n  3)City\n  4)No condition\nEnter condition variable: ");
                scanf("%d",&op1);
                switch(op1)
                {
                   case 1 : strcat(query," where Jno ");
                            printf("\n Enter condition for Project No: ");
                            scanf("%s",cond);
                            strcat(query,cond);break;
                
                   case 2 : strcat(query," where Jname ");
                            printf("\n Enter condition for Project Name: ");
                            scanf("%s",cond);
                            strcat(query,cond);break;
                            
                   case 3 : strcat(query," where City ");
                            printf("\n Enter condition for city: ");
                            scanf("%s",cond);
                            strcat(query,cond);break;
                
                   case 4 :break;          
                
                
                
                }break;
                
                
                
                
      case 3 : printf("\n\n----------CONDITION---------\n\n  1)Supplier No\n  2)Supplier name\n  3)Status\n  4)City\n  5)No condition\nEnter condition variable: ");
                scanf("%d",&op1);
                switch(op1)
                {
                   case 1 : strcat(query," where Sno ");
                            printf("\n Enter condition for Supplier No: ");
                            scanf("%s",cond);
                            strcat(query,cond);break;
                
                   case 2 : strcat(query," where Sname ");
                            printf("\n Enter condition for Supplier Name: ");
                            scanf("%s",cond);
                            strcat(query,cond);break;
                            
                   case 3 : strcat(query," where Status ");
                            printf("\n Enter condition for Supplier Status : ");
                            scanf("%s",cond);
                            strcat(query,cond);break;        
                            
                   case 4 : strcat(query," where City ");
                            printf("\n Enter condition for city: ");
                            scanf("%s",cond);
                            strcat(query,cond);break;
                
                   case 5 :break;          
                
                
                
                }break;
   }
   
  

}


void Attributes(int op)
{
   int op1=0;
   int count=0;
   system("clear");
   switch(op)
   {
      case 1:  while(op1<7)
               {
                 printf("\n\n--------ATTRIBUTES---------\n\n  1)All\n  2)Part No\n  3)Part Name\n  4)Color\n  5)Weight\n  6)City\nEnter attribute(Enter 7 to stop): ");
                  scanf("%d",&op1);
                  switch(op1)
                  {
                     case 1: strcat(query,"* ");op1=7;break;
                     
                     case 2: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Pno ");count++;break;
                             
                     
                     case 3: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Pname ");count++;break;
                     
                     case 4: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Colour ");count++;break;
                     
                     
                     case 5: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Weight ");count++;break;
                             
                     case 6: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"City ");count++;break;
                  }
                  
                  
               }break;
               
               
      case 2:  while(op1<5)
               {
                  printf("\n\n--------ATTRIBUTES---------\n\n  1)All\n  2)Project No\n  3)Project Name\n  4)City\nEnter attribute(Enter 5 to stop): ");
                  scanf("%d",&op1);
                  switch(op1)
                  {
                     case 1: strcat(query,"* ");op1=7;break;
                     
                     case 2: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Jno ");count++;break;
                             
                     
                     case 3: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Jname ");count++;break;
                     
                             
                     case 4: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"City ");count++;break;
                  }
                  
                  
               }break;
               
               
               
               
      case 3:  while(op1<6)
               {
                  printf("\n\n--------ATTRIBUTES---------\n\n  1)All\n  2)Supplier No\n  3)Supplier Name\n  4)Status\n  5)City\nEnter attribute(Enter 6 to stop): ");
                  scanf("%d",&op1);
                  switch(op1)
                  {
                     case 1: strcat(query,"* ");op1=7;break;
                     
                     case 2: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Sno ");count++;break;
                             
                     
                     case 3: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Sname ");count++;break;
                     
                     case 4: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"Status ");count++;break;
                             
                     case 5: if(count>0)
                                 strcat(query,", ");
                             strcat(query,"City ");count++;break;
                  }
                  
                  
               }break;
               
   
   
   
   }
   
   
   strcat(query,"from ");
   strcat(query,q2);
   Conditions(op);


}

void Insert(int op)
{
   char values[20];
   system("clear");
   switch(op)
   {
      case 1: printf("\n  Enter Part no :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query,", ");
              
              printf("\n  Enter Part name :");
              scanf("%s",values);
              strcat(query," '");
              strcat(query,values);
              strcat(query,"' ");
              strcat(query,", ");
              
              printf("\n  Enter Colour :");
              scanf("%s",values);
              strcat(query," '");
              strcat(query,values);
              strcat(query,"' ");
              strcat(query,", ");
              
              printf("\n  Enter Weight :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query,", ");
              
              printf("\n  Enter City :");
              scanf("%s",values);
              strcat(query," '");
              strcat(query,values);
              strcat(query,"' ");
              strcat(query," )");break;
              
              
              
      
      
      case 2: printf("\n  Enter Project no :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query,", ");
              
              printf("\n  Enter Project name :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query,", "); 
              
              printf("\n  Enter City :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query," )");break;
              
      
      
      
      
      case 3: printf("\n  Enter Supplier no :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query,", ");
              
              printf("\n  Enter Supplier name :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query,", "); 
              
              printf("\n  Enter Supplier Status :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query,", "); 
              
              printf("\n  Enter City :");
              scanf("%s",values);
              strcat(query,values);
              strcat(query," )");break;           
   
   
   
   }



}

void Op(int op)
{

  int op1=1;
  
      system("clear");
      printf("\n\n------------TABLES------------\n\n 1)Part\n 2)Project\n 3)Supplier\nSelect table:");
      scanf("%d",&op1);
      switch(op1)
      {
         case 1  :   switch(op)
                     {
                        case 1:  strcat(q2,"Part "); 
                                 Attributes(1);break;
                                 
                        case 2:  strcat(query,"Part ");
                                 Conditions(1);break;
                     
                        case 3:  strcat(query,"Part Values ( ");Insert(1);break;
                     
                     }break;
                   
                   
                     
         
         case 2  : switch(op)
                     {
                        case 1:  strcat(q2,"Project "); 
                                 Attributes(2);break;
                                 
                        case 2:  strcat(query,"Project ");
                                 Conditions(2);
                                 //strcat(query," cascade");
                                 break;
                     
                        case 3:  strcat(query,"Project Values (");Insert(2);break;
                     
                     }break;
         
         
         
         
         
         //strcat(q2,"Project"); Attributes(2);break;
         
         case 3  : switch(op)
                     {
                        case 1:  strcat(q2,"Supplier "); 
                                 Attributes(3);break;
                                 
                        case 2:  strcat(query,"Supplier ");
                                 Conditions(3);break;
                     
                        case 3:  strcat(query,"Supplier Values (");Insert(3);break;
                     
                     }break;
         
         
         
         //strcat(q2,"Supplier"); Attributes(3);break;
         
         default  : return;
      }
    


}


int MainMenu()
{
   int op;
   system("clear");
      printf("\n\n--------COMMAND---------\n\n  1)Select\n  2)Delete\n  3)Insert\nEnter your choice: ");
      scanf("%d",&op);
      switch(op)
      {
         case 1:strcat(query,"Select ");Op(op);break;
         
         case 2:strcat(query,"Delete from ");Op(op);break;
         
         
         case 3:strcat(query,"Insert INTO ");Op(op);break;
      
      }
      
   return op;
}



int main()
{
   system("clear");
   int op=1,op1,flag;
   
   MYSQL *conn;
   MYSQL_RES *res;
   MYSQL_ROW row;

   char *server = "localhost"; // localhost for accessing local mysql
   char *user = "root";// root for students
   char *password = "ocean"; /* set me first - pwd : iiitdm123 */ 
   char *database = "SPP"; // Here you need to enter the database name if you have already other wise leave it free.

   conn = mysql_init(NULL);

   /* Connect to database */
   if (!mysql_real_connect(conn, server,
         user, password, database, 0, NULL, 0)) {
      fprintf(stderr, "%s\n", mysql_error(conn));
      exit(1);
   }
   
   
   while(1)
   {
      strcpy(query,"");
      strcpy(q2,"");
      flag=0;
      printf("\n\n 1)Enter command\n 2)Choose from option\n 3)Exit\nEnter option no :");
      scanf("%d",&op);
      switch(op)
      {
         case 1:    printf("\nEnter Query: ");
                    scanf("%s",q2);
                    while(strcmp(q2,";")!=0)
                    {
                        if(strcmp(q2,"select")==0)
                           flag=1;
                        strcat(query,q2);
                        strcat(query," ");
                        scanf("%s",q2);
                    }
                        break;
                    
         case 2:    op1=MainMenu();break;
         
         case 3:    exit(0);
         
         default:   printf("\n Enter a valid input!");
         
      }
      
   
   
   
   printf("\nCommand Entered:  %s\n",query);
   printf("\n\n\n");
   if (mysql_query(conn,query)) 
   {
      fprintf(stderr, "%s\n", mysql_error(conn));
      exit(1);
   }
   res = mysql_use_result(conn);

   unsigned long *lengths;
   unsigned int num_fields;


   if(op1==1 || flag==1)
   {
         while ((row = mysql_fetch_row(res)) != NULL)
          {
            num_fields = mysql_num_fields(res);
            lengths = mysql_fetch_lengths(res);
            for(int i = 0; i < num_fields; i++)
            {
               //printf("%d  ",(int)lengths[i]);
               //printf("%s\t",row[i]);
               printf("%18.*s ", (int) lengths[i],row[i] ? row[i] : "NULL");
               // printf("Column %u is %lu bytes in length.\n",i, lengths[i]);
               	//printf("%s \n", row[i]);
            }
            printf("\n");
         }
   
   } 
 

   
   

   mysql_free_result(res);

 }  
   
}
