using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entity
{
    public class Class_Entity
    {

        private String F_Name;
        //
        public String First_Name
        {
            get { return F_Name; }
            set { F_Name = value; }
        }
        private String L_Name;

        public string Last_Name
        {
            get { return L_Name; }
            set { L_Name = value; }
        }
        private string Pres_Address;

        public string Present_Address
        {
            get { return Pres_Address; }
            set { Pres_Address = value; }
        }
        private string Perm_Address;

        public string Permanent_Address
        {
            get { return Perm_Address; }
            set { Perm_Address = value; }
        }
        private string Pass;

        public string Password
        {
            get { return Pass; }
            set { Pass = value; }
        }
        private string state;

        public string State
        {
            get { return state; }
            set { state = value; }
        }
        

        private string country;

	    public string Country
	    {
		    get { return country;}
		    set { country = value;}
	    }
	
       
        private string Email;

        public string Email_Address
        {
            get { return Email; }
            set { Email = value; }
        }
        private string engine;

        public string Engine
        {
            get { return engine; }
            set { engine = value; }
        }
        private string myBikes;

        public string MyBikes
        {
            get { return myBikes; }
            set { myBikes = value; }
        }
        private string Number;
                
	    public string Contact_Number
	    {
		    get { return Number;}
		    set { Number = value;}
	    }
        private DateTime Dob;


        public DateTime Date_of_Birth
        {
            get { return Dob;}
            set{Dob = value;}
        }
        private string Id_Proof;

        public string Identification_Proof
        {
            get { return Id_Proof; }
            set { Id_Proof = value; }
        }

        public Class_Entity()
        {
            
        }

    }
}
