using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class ContratoProfesional
    {
        public decimal ID_CONTR { get; set; }
        public DateTime FECHAINICIO { get; set; }
        public DateTime? FECHATERMINO { get; set; }
        public string HISTORIAL { get; set; }
        public string PROFESIONAL_RUT_PROF { get; set; }

        public Profesional Profesional { get; set; }

        SafeCoreEntities db = new SafeCoreEntities();

        public List<ContratoProfesional> ReadAll()
        {
            return this.db.CONTRATOPROF.Select(c => new ContratoProfesional()
            {
                ID_CONTR = c.ID_CONTR,
                FECHAINICIO = c.FECHAINICIO,
                FECHATERMINO = c.FECHATERMINO,
                HISTORIAL = c.HISTORIAL,
                PROFESIONAL_RUT_PROF = PROFESIONAL_RUT_PROF,

                Profesional = new Profesional()
                {
                    RUT_PROF = c.PROFESIONAL_RUT_PROF,
                    ACTIVO = c.PROFESIONAL.ACTIVO,
                    NOMBRE = c.PROFESIONAL.NOMBRE,
                    APELLIDO = c.PROFESIONAL.APELLIDO,
                    GENERO = c.PROFESIONAL.GENERO,
                    DIRECCION = c.PROFESIONAL.DIRECCION,
                    TELEFONO = c.PROFESIONAL.TELEFONO,
                    CORREO = c.PROFESIONAL.CORREO
                }

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_CONTRATOPROF(this.FECHAINICIO, this.FECHATERMINO, this.HISTORIAL, this.PROFESIONAL_RUT_PROF);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
