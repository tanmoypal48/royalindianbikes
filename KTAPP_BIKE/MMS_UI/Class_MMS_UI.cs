using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using MMS_DAO;

namespace MMS_UI
{
    public class Class_MMS_UI
    {
        
        public static void Main(string[] args)
        {
            Class_Entity e = new Class_Entity();
            
            Console.Write("Enter First Name: \t");
            e.First_Name = Console.ReadLine();
            Console.Write("Enter Last Name: \t");
            e.Last_Name = Console.ReadLine();
            Console.Write("Enter Present Address: \t");
            e.Present_Address = Console.ReadLine();
            Console.Write("Enter Permanent Address:\t");
            e.Permanent_Address = Console.ReadLine();
            Console.Write("Enter Password: \t");
            e.Password = Console.ReadLine();
            Console.Write("Enter State:\t");
            e.State = Console.ReadLine();
            Console.Write("Enter Country:\t");
            e.Country = Console.ReadLine();
            Console.Write("Enter Email:\t");
            e.Email_Address = Console.ReadLine();
            Console.Write("Gender: \t");
            e.Gender = Console.ReadLine();
            Console.Write("Marital Status:\t");
            e.Marital_Status = Console.ReadLine();
            Console.Write("Enter Contact Number:\t");
            e.Contact_Number = Console.ReadLine();
            Console.Write("Enter Date of Birth:\t");
            e.Date_of_Birth = DateTime.Parse(Console.ReadLine());
            Console.Write("Enter Identification Proof:\t");
            e.Identification_Proof = Console.ReadLine();

            Class_DAO dao = new Class_DAO();
            dao.dbcon(e);
            
        }

    }
}