using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class Servicio
    {
        public decimal ID_SERV { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
        public string DESCRIPCION { get; set; }
        public DateTime FECHASERVICIO { get; set; }
        public decimal VALOR { get; set; }
        public string PROFESIONAL_RUT_PROF { get; set; }

        public Profesional Profesional { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<Servicio> ReadAll()
        {
            return this.db.SERVICIO.Select(s => new Servicio()
            {
                ID_SERV = s.ID_SERV,
                CLIENTES_RUT_CLIENT = s.CLIENTES_RUT_CLIENT,
                DESCRIPCION = s.DESCRIPCIÓN,
                FECHASERVICIO = s.FECHASERVICIO,
                VALOR = s.VALOR,
                PROFESIONAL_RUT_PROF = s.PROFESIONAL_RUT_PROF,

                Profesional = new Profesional()
                {
                    RUT_PROF = s.PROFESIONAL_RUT_PROF,
                    ACTIVO = s.PROFESIONAL.ACTIVO,
                    NOMBRE = s.PROFESIONAL.NOMBRE,
                    APELLIDO = s.PROFESIONAL.APELLIDO,
                    GENERO = s.PROFESIONAL.GENERO,
                    DIRECCION = s.PROFESIONAL.DIRECCION,
                    TELEFONO = s.PROFESIONAL.TELEFONO,
                    CORREO = s.PROFESIONAL.CORREO
                }

            }).ToList();
        }

       

    }
}
