using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using MMS_DAO;
using System.Globalization;


namespace MMS_WebUI
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Class_Entity ce = new Class_Entity();
            ce.First_Name = FName.Text.ToString();
            ce.Last_Name = LName.Text.ToString();
            ce.Present_Address = PresentAddress.Text.ToString();
            ce.Permanent_Address = PermanentAddress.Text.ToString();
            ce.Password = Password.Text.ToString();
            ce.State = StateDropDownList.Text.ToString();
            ce.Country = CountryDropDownList.Text.ToString();
            ce.Email_Address = Email.Text.ToString();
            ce.Engine = EngineList.Text.ToString();
            ce.MyBikes = MyBikes.Text.ToString();
            ce.Contact_Number = Number.Text.ToString();
            ce.Date_of_Birth =  Convert.ToDateTime(Dob.Text);
            ce.Identification_Proof = IdType.Text.ToString();
            Class_DAO dao = new Class_DAO();
            dao.dbcon(ce);
            Response.Write("<script LANGUAGE='JavaScript' >alert('we will contact you soon for your dreambike.')</script>");
            EmptyTextBoxes(form1);
        }

        public static void EmptyTextBoxes(Control parent)
        {
            foreach (Control c in parent.Controls)
            {
                if (c.GetType() == typeof(TextBox))
                {
                    ((TextBox)(c)).Text = string.Empty;
                }
            }
        }

        protected void Number_TextChanged(object sender, EventArgs e)
        {
            
                Number.MaxLength=10;
               
            
        }

        protected void Dob_TextChanged(object sender, EventArgs e)
        {
            
                DateTime dTCurrent = DateTime.Now;
                
                if(dTCurrent < DateTime.Parse(Dob.Text))
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Date is greater than Today..!!!')</script>");
                }
            
        }

    }
}