using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;

namespace SafeCore.BLL
{
    public class Profesional
    {
        public string RUT_PROF { get; set; }
        public string ACTIVO { get; set; }
        public string NOMBRE { get; set; }
        public string APELLIDO { get; set; }
        public string GENERO { get; set; }
        public string DIRECCION { get; set; }
        public string TELEFONO { get; set; }
        public string CORREO { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<PROFESIONAL> ReadAll()
        {
            return this.db.PROFESIONAL.Select(p => new PROFESIONAL()
            {
                RUT_PROF = p.RUT_PROF,
                ACTIVO = p.ACTIVO,
                NOMBRE = p.NOMBRE,
                APELLIDO = p.APELLIDO,
                GENERO = p.GENERO,
                DIRECCION = p.DIRECCION,
                TELEFONO = p.TELEFONO,
                CORREO = p.CORREO

            }).ToList();
        }

    }
}
