using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace MMS_DAO
{
    class Helper
    {
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["MMSDB"].ConnectionString;
            }
        }
    }
}
