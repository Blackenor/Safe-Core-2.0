using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class HistorialAtrasos
    {
        public decimal ID_ATRASO { get; set; }
        public DateTime? FECHA { get; set; }
        public string PROFESIONAL_RUT_PROF { get; set; }

        public Profesional Profesional { get; set; }

        SafeCoreEntities db = new SafeCoreEntities();

        public List<HistorialAtrasos> ReadAll()
        {
            return this.db.HISTORIALATRASOS.Select(h => new HistorialAtrasos()
            {
                ID_ATRASO = h.ID_ATRASO,
                FECHA = h.FECHA,
                PROFESIONAL_RUT_PROF = h.PROFESIONAL_RUT_PROF,

                Profesional = new Profesional()
                {
                    RUT_PROF = h.PROFESIONAL.RUT_PROF,
                    ACTIVO = h.PROFESIONAL.ACTIVO,
                    NOMBRE = h.PROFESIONAL.NOMBRE,
                    APELLIDO = h.PROFESIONAL.NOMBRE,
                    GENERO = h.PROFESIONAL.GENERO,
                    DIRECCION = h.PROFESIONAL.DIRECCION,
                    TELEFONO = h.PROFESIONAL.TELEFONO,
                    CORREO = h.PROFESIONAL.CORREO
                }

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_HISTORIALATRASOS(this.FECHA, this.PROFESIONAL_RUT_PROF);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
