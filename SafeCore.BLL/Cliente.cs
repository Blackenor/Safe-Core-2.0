using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;

namespace SafeCore.BLL
{
    public class Cliente
    {
        public string Rut_cliente { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string Rubro { get; set; }

        SafeCoreEntities db = new SafeCoreEntities();

        public List<Cliente> ReadAll()
        {
            return this.db.CLIENTES.Select(c => new Cliente()
            {
                Rut_cliente = c.RUT_CLIENT,
                Nombre = c.NOMBRE,
                Direccion = c.DIRECCION,
                Telefono = c.TELEFONO,
                Correo = c.CORREO,
                Rubro = c.RUBRO

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_CLIENTES(this.Rut_cliente, this.Nombre, this.Direccion, this.Telefono, this.Correo, this.Rubro);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
