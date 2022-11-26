using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class VisitasTerreno
    {
        public decimal ID_VISITA { get; set; }
        public DateTime FECHAVISITA { get; set; }
        public string PROFESIONAL_RUT_PROF { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }

        public Profesional Profesional { get; set; }
        public Cliente Cliente { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<VisitasTerreno> ReadAll()
        {
            return this.db.VISITASTERRENO.Select(v => new VisitasTerreno()
            {
                ID_VISITA = v.ID_VISITA,
                FECHAVISITA = v.FECHAVISITA,
                PROFESIONAL_RUT_PROF = v.PROFESIONAL_RUT_PROF,
                CLIENTES_RUT_CLIENT = v.CLIENTES_RUT_CLIENT,

                Profesional = new Profesional()
                {
                    RUT_PROF = PROFESIONAL_RUT_PROF,
                    ACTIVO = v.PROFESIONAL.ACTIVO,
                    NOMBRE = v.PROFESIONAL.NOMBRE,
                    APELLIDO = v.PROFESIONAL.APELLIDO,
                    GENERO = v.PROFESIONAL.GENERO,
                    DIRECCION = v.PROFESIONAL.DIRECCION,
                    TELEFONO = v.PROFESIONAL.TELEFONO,
                    CORREO = v.PROFESIONAL.CORREO
                },

                Cliente = new Cliente()
                {
                    Rut_cliente = v.CLIENTES_RUT_CLIENT,
                    Nombre = v.CLIENTES.NOMBRE,
                    Direccion = v.CLIENTES.DIRECCION,
                    Telefono = v.CLIENTES.TELEFONO,
                    Correo = v.CLIENTES.CORREO,
                    Rubro = v.CLIENTES.RUBRO
                }

            }).OrderByDescending(v => v.ID_VISITA).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_VISITASTERRENO(this.FECHAVISITA, this.PROFESIONAL_RUT_PROF, this.CLIENTES_RUT_CLIENT);

                return true;
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
                return false;
            }
        }

    }
}
