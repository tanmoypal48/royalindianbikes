using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entity;

namespace MMS_DAO
{
    public class Class_DAO
    {
        public void dbcon(Class_Entity d)
        {   
            
            SqlConnection con = new SqlConnection(Helper.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_SaveAdminData";
            cmd.Parameters.Add(new SqlParameter("@First_Name", SqlDbType.NVarChar)).Value=d.First_Name;
            cmd.Parameters.Add(new SqlParameter("@Last_Name", SqlDbType.NVarChar)).Value=d.Last_Name;
            cmd.Parameters.Add(new SqlParameter("@Present_Address", SqlDbType.NVarChar)).Value=d.Present_Address;
            cmd.Parameters.Add(new SqlParameter("@Permanent_Address", SqlDbType.NVarChar)).Value = d.Permanent_Address;
            cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.NVarChar)).Value = d.Password;
            cmd.Parameters.Add(new SqlParameter("@State", SqlDbType.NVarChar)).Value = d.State;
            cmd.Parameters.Add(new SqlParameter("@Country", SqlDbType.NVarChar)).Value = d.Country;
            cmd.Parameters.Add(new SqlParameter("@Email_Address", SqlDbType.NVarChar)).Value = d.Email_Address;
            cmd.Parameters.Add(new SqlParameter("@Gender", SqlDbType.NVarChar)).Value = d.Engine;
            cmd.Parameters.Add(new SqlParameter("@Marital_Status", SqlDbType.NVarChar)).Value = d.MyBikes;
            cmd.Parameters.Add(new SqlParameter("@Contact_Number", SqlDbType.NVarChar)).Value = d.Contact_Number;
            cmd.Parameters.Add(new SqlParameter("@Date_of_Birth", SqlDbType.DateTime)).Value = d.Date_of_Birth;
            cmd.Parameters.Add(new SqlParameter("@Identification_Proof", SqlDbType.NVarChar)).Value = d.Identification_Proof;
            con.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }   
    }
}
