using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class ActividadMejora
    {
        public decimal ID_ACTIVIDADMEJORA { get; set; }
        public string NOMBREMEJORA { get; set; }
        public string DESCRIPCIONMEJORA { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }

        public Cliente Cliente { get; set; }

        SafeCoreEntities db = new SafeCoreEntities();

        public List<ActividadMejora> ReadAll()
        {
            return this.db.ACTIVIDADMEJORA.Select(a => new ActividadMejora()
            {
                ID_ACTIVIDADMEJORA = a.ID_ACTIVIDADMEJORA,
                NOMBREMEJORA = a.NOMBREMEJORA,
                DESCRIPCIONMEJORA = a.DESCRIPCIONMEJORA,
                CLIENTES_RUT_CLIENT = a.CLIENTES_RUT_CLIENT,

                Cliente = new Cliente()
                {
                    Rut_cliente = a.CLIENTES_RUT_CLIENT,
                    Nombre = a.CLIENTES.NOMBRE,
                    Direccion = a.CLIENTES.DIRECCION,
                    Telefono = a.CLIENTES.TELEFONO,
                    Correo = a.CLIENTES.CORREO,
                    Rubro = a.CLIENTES.RUBRO
                }

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_ACTIVIDADMEJORA(this.NOMBREMEJORA, this.DESCRIPCIONMEJORA, this.CLIENTES_RUT_CLIENT);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
