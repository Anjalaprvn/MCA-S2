import java.util.Scanner;
class employee{
int Eno;
String Ename;
double Esalary;
}
public class EmpArraySimple{
public static void main( String[] args){
Scanner sc= new Scanner(System.in);
System.out.println("Enter no of employee:");
int n=sc.nextInt();
employee[] emp= new employee[n];
for(int i=0;i<n;i++){
emp[i]=new employee();
System.out.println("enter details of employee" + (i+1) +":");
System.out.println("employee no:");
emp[i].Eno=sc.nextInt();
sc.nextLine();
System.out.println("Employee name:");
emp[i].Ename=sc.nextLine();
System.out.println("salary:");
emp[i].Esalary=sc.nextDouble();
}
System.out.println("Enter Employee no to search:");
int sno=sc.nextInt();
boolean found=false;
for(int i=0;i<n;i++){
if(emp[i].Eno==sno){
System.out.println("employee found");
System.out.println("employee number:" +emp[i].Eno);
System.out.println("employee name:" +emp[i].Ename);
System.out.println("employee Salary:" +emp[i].Esalary);
found=true;
break;
}
}
if(!found){
System.out.println("employee not found");
}
}
}
