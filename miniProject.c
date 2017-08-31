// Password for admin is abc

#include<stdio.h>
#include<mysql.h>
#include<stdlib.h>
#include<string.h>


  char query[100];
  char q2[50];
  

   MYSQL *conn,*conn1;
   MYSQL_RES *res;
   MYSQL_ROW row;

   char *server = "localhost"; 
   char *user = "root";
   char *password = ""; /* set me first - pwd : iiitdm123 */ 
   char *database = ""; // LEAVE IT EMPTY



// Job profiles submenu
void Job()
{
    conn = mysql_init(NULL);
    system ("clear");
    char val;
    char jid[3];
    
    
    if (!mysql_real_connect(conn, server,user, password, database, 0, NULL, 0)) 
    {
      fprintf(stderr, "%s\n", mysql_error(conn));
      exit(1);
    }
    
    mysql_query(conn,"use Admin;");
  
    if (mysql_query(conn,"select o.CID,j.*,c.company_name,c.description from Offers o,company_details c, job_profiles j  where o.CID=c.company_id and o.JobID=j.job_id and  o.Status='P';")) 
    {
      fprintf(stderr, "%s\n", mysql_error(conn));
      return;
    }
    
   res = mysql_use_result(conn);

   unsigned long *lengths;
   unsigned int num_fields;

         while ((row = mysql_fetch_row(res)) != NULL)
          {
            num_fields = mysql_num_fields(res);
            lengths = mysql_fetch_lengths(res);
            for(int i = 0; i < num_fields; i++)
            {
                if(i==0)
                    printf("%-23s","\n\t CompanyID  ");
                    
                if(i==1)
                    printf("%-23s","\n\t JobID  ");
                    
                if(i==2)
                    printf("%-23s","\n\t Type of Job ");
                    
                if(i==3)
                    printf("%-23s","\n\t Cost to Company ");
                    
                if(i==4)
                    printf("%-23s","\n\t Designation  ");
                    
                    
                if(i==5)
                    printf("%-23s","\n\t Location ");
                    
                if(i==6)
                    printf("%-23s","\n\t Company Name  ");
                    
                if(i==7)
                    printf("%-23s","\n\t Description  ");
                    
                printf(": %s", row[i]);
            
            
            }
                
                //printf("%18.*s ", (int) lengths[i],row[i] ? row[i] : "NULL");
              
        
            printf("\n\n");
         }
 
 
   mysql_free_result(res);
   printf("\n\nValidate JobIDs?(y/n) : ");
   scanf(" %c",&val);
   
   
   while(val=='y' || val=='Y')
   {
        printf("\n\n  Enter JobId: ");
        scanf("%s",jid);
        strcat(query,"UPDATE Offers SET Status='A' where JobId=");
        strcat(query,jid);
        strcat(query," ;");
        
        if (mysql_query(conn,query)) 
        {
        fprintf(stderr, "%s\n", mysql_error(conn));
        return;
        }
        
        printf("Validate JobIDs?(y/n) : ");
        scanf(" %c",&val);
   
   }
   

  
    mysql_close(conn);

}



// Company sub menu

void Companies()
{

    conn = mysql_init(NULL);
 
    char val;
    char jid[3];
    
    
     if (!mysql_real_connect(conn, server,user, password, database, 0, NULL, 0)) 
    {
      fprintf(stderr, "%s\n", mysql_error(conn));
      exit(1);
    }
    
    mysql_query(conn,"use Admin;");
  
 
    system("clear");
    int op;
    
   
    
    printf("\n\n\n\n     DISPLAY \n\n\t 1)Companies\n\t 2)Both (ordered by Status)\n\t 3)Both (according to company)\n\t 4)Go Back\n\tEnter your choice:  ");
    scanf("%d",&op);
    strcpy(query,"");
    switch(op)
    {
        case 1: strcat(query," select * from company_details");break;
        
        case 2: strcat(query," select B.Status, B.JobID, B.job_type,B.designation , B.CID,B.company_name from (select * from ( select * from Offers JOIN company_details ON CID=company_id) AS A JOIN job_profiles AS C ON  A.JobID=C.job_id) AS B ORDER BY B.Status");break;
        
        case 3: strcat(query," select B.CID, B.JobID, B.job_type,B.designation , B.Status,B.company_name from (select * from ( select * from Offers JOIN company_details ON CID=company_id) AS A JOIN job_profiles AS C ON  A.JobID=C.job_id) AS B ORDER BY B.CID");break;
    
    }     

    
    
       if (mysql_query(conn,query)) 
    {
      fprintf(stderr, "%s\n", mysql_error(conn));
      return;
    }
    
   
    
   res = mysql_use_result(conn);
   
   if(op==1)
   {
     printf("\n\n\nCompany ID \t\t    Company name \t\t Company Email       \t\t Address         \t\t Description \n\n");
   }
   
   else if(op==2)
   {
    
    printf("%200.*s",200,"\n\n  A-Accepted\n  P-Pending\n  O-Open\n  C-Closed\n  R-Rejected \n\n Status\t\t\t      JobID\t\t\t   Job type\t\t\tDesignation\t\t  CID\t\t\t Company Name\n\n");
  }      
        
    else if(op==3)
    {
    
       printf("%200.*s",200,"\n\n  A-Accepted\n  P-Pending\n  O-Open\n  C-Closed\n  R-Rejected \n\n Company id\t\t    JobID\t\t\t  Job type\t\t\tDesignation\t\t     Status\t\t\tCompany Name\n\n");
    }
        
   
   
   
   unsigned long *lengths;
   unsigned int num_fields;

         while ((row = mysql_fetch_row(res)) != NULL)
          {
            num_fields = mysql_num_fields(res);
            lengths = mysql_fetch_lengths(res);
            for(int i = 0; i < num_fields; i++)
            {
            
            
            printf("   %-25s", row[i]);
            
            }
               
        
            printf("\n");
         }
 
 
   mysql_free_result(res);
   
   printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n Press any key to go back ");
   scanf(" %c",&query[0]);
   

}



// Search by skills

void Skills()
{

        conn = mysql_init(NULL);
     
     if (!mysql_real_connect(conn, server,user, password, database, 0, NULL, 0)) 
    {
      fprintf(stderr, "%s\n", mysql_error(conn));
      exit(1);
    }
    
    mysql_query(conn,"use Admin;");
  
 
    system("clear");
    int n;
    
  
    
   
   
    strcpy(query,"Select rollno,name,deptt,gender,skills from student_details where ");
    //
    printf("\n\n\t Enter the number of skills required :");
    scanf("%d",&n);
    
    for(int i=0;i<n;i++)
    {
        printf("\n Enter skill %d : ",i+1);
        scanf("%s",q2);
        if(i>0)
            strcat(query," or ");
        strcat(query," skills like '%");
        strcat(query,q2);
        strcat(query,"%'");
        
    }
    
   
    
    
       if (mysql_query(conn,query)) 
    {
      fprintf(stderr, "%s\n", mysql_error(conn));
      return;
    }
    
   
    
   res = mysql_use_result(conn);
   
   

    printf("\n\n\n\tRoll No\t\t\t Name\t\t   Branch  \t\tGender   \tSkills\n\n");
   
   unsigned long *lengths;
   unsigned int num_fields;

         while ((row = mysql_fetch_row(res)) != NULL)
          {
            num_fields = mysql_num_fields(res);
            lengths = mysql_fetch_lengths(res);
            for(int i = 0; i < num_fields; i++)
            {
            
            
             printf("%18.*s ", (int) lengths[i],row[i] ? row[i] : "NULL");
            
            }
               
            printf("\n");
         }
 
 
   mysql_free_result(res);
   
   printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n Press any key to go back ");
   scanf(" %c",&query[0]);
 


}


// Main admin Interface

void AdminSchema()
{
    int op;
    
   
    while (1)
    {
        system("clear");
        printf("\n\n \t\t\t\t\tADMIN MENU\n\n");
        printf("__________________________________________________________________________________________________________________________________________________________________");
        
        printf("\n\n\n\n\n\t 1)Check for new Job Requests\n\t 2)Display Companies and Jobs\n\t 3)Find students by skills\n\t 4)Logout\n\tEnter your choice:  ");
        scanf("%d",&op);
        switch(op)
        {
            case 1: Job();break;
            case 2:Companies();break;
            case 3:Skills();break;
            case 4:return;
        }
    } 
}




 //Login Page
 
 void AdminLogin(int n)
 {
    char pass[10];
    system ("clear");
     printf("\n\n\n\n\n\n\n\n\n\n\t\t\t\t\t\t\t\t  -----------------------------");
     printf("                  \n\t\t\t\t\t\t\t\t  |                           |");
     printf("                  \n\t\t\t\t\t\t\t\t  |         Admin Mode        |");
     printf("                  \n\t\t\t\t\t\t\t\t  |                           |");
     printf("                  \n\t\t\t\t\t\t\t\t  -----------------------------");
     
     if(n)
        printf("\n\n\t\t\t\t\t\t\t\t   Invalid Password!!!! Enter again!\n");
     printf("\n\n\t\t\t\t\t\t\t\t   Enter Password: ");
     
     scanf("%s",pass);
     
     if(strcmp(pass,"abc")==0)
        AdminSchema();
     
     else
         AdminLogin(1);        
        
 
 }
 

  
   


int main()
{
    AdminLogin(0);
    return 0;
}
