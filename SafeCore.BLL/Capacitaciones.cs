using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class Capacitaciones
    {
        public decimal ID_CAP { get; set; }
        public DateTime? FECHA_REALIZA { get; set; }
        public string PROFESIONAL_RUT_PROF { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
        public string DESC_MATERIAL { get; set; }
        public string REALIZADA { get; set; }

        public Profesional Profesional { get; set; }
        public Cliente Cliente { get; set; }

        SafeCoreEntities db = new SafeCoreEntities();

        public List<Capacitaciones> ReadAll()
        {
            return this.db.CAPACITACIONES.Select(c => new Capacitaciones()
            {
                ID_CAP = c.ID_CAP,
                FECHA_REALIZA = c.FECHA_REALIZA,
                PROFESIONAL_RUT_PROF = c.PROFESIONAL_RUT_PROF,
                CLIENTES_RUT_CLIENT = c.CLIENTES_RUT_CLIENT,
                DESC_MATERIAL = c.DESC_MATERIAL,
                REALIZADA = c.REALIZADA,

                Profesional = new Profesional()
                {
                    RUT_PROF = c.PROFESIONAL.RUT_PROF,
                    ACTIVO = c.PROFESIONAL.ACTIVO,
                    NOMBRE = c.PROFESIONAL.NOMBRE,
                    APELLIDO = c.PROFESIONAL.APELLIDO,
                    GENERO = c.PROFESIONAL.GENERO,
                    DIRECCION = c.PROFESIONAL.DIRECCION,
                    TELEFONO = c.PROFESIONAL.TELEFONO,
                    CORREO = c.PROFESIONAL.CORREO
                },

                Cliente = new Cliente()
                {
                    Rut_cliente = c.CLIENTES_RUT_CLIENT,
                    Nombre = c.CLIENTES.NOMBRE,
                    Direccion = c.CLIENTES.DIRECCION,
                    Telefono = c.CLIENTES.TELEFONO,
                    Correo = c.CLIENTES.CORREO,
                    Rubro = c.CLIENTES.RUBRO
                }

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_CAPACITACIONES(this.FECHA_REALIZA, this.PROFESIONAL_RUT_PROF, this.CLIENTES_RUT_CLIENT, this.DESC_MATERIAL, this.REALIZADA);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
