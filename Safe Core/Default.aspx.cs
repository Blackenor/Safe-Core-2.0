using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Core
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            OracleConnection conexion = new OracleConnection("DATA SOURCE = SafeCoreEntities; PASSWORD= sc1234; USER ID = SAFECORE");
            conexion.Open();
            OracleCommand comando = new OracleCommand("SELECT * FROM USUARIOS WHERE NOMBRE = :nombre AND PASS = :pass", conexion);


            comando.Parameters.Add(":nombre");
            comando.Parameters.Add(":pass");

            OracleDataReader lector = comando.ExecuteReader();

            if (lector.Read())
            {
                if (lector["ROL_ID_ROL"].ToString() == "1")
                {
                    Server.Transfer("Index");
                    conexion.Close();
                }
                if (lector["ROL_ID_ROL"].ToString() == "2")
                {
                    Server.Transfer("Index");
                    conexion.Close();
                }

            }

            else 
            {

            }

        }
    }
}