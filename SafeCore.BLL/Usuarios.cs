using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class Usuarios
    {
        public decimal ID_USER { get; set; }
        public string NOMBRE { get; set; }
        public decimal ROL_ID_ROL { get; set; }
        public string PASS { get; set; }

        public Rol Rol { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<Usuarios> ReadAll()
        {
            return this.db.USUARIOS.Select(u => new Usuarios()
            {
                ID_USER = u.ID_USER,
                NOMBRE = u.NOMBRE,
                ROL_ID_ROL = u.ROL_ID_ROL,
                PASS = u.PASS,

                Rol = new Rol()
                {
                    ID_ROL = u.ROL_ID_ROL,
                    NOMBREROL = u.ROL.NOMBREROL
                }

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_USUARIOS(this.NOMBRE, this.PASS, this.ROL_ID_ROL);

                return true;
            }
            catch
            {
                return false;
            }
        }

    }
}
