using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;

namespace SafeCore.BLL
{
    public class ReporteCliente
    {
        public int ID_REPORTC { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
        public DateTime FECHA { get; set; }
        public string DESCRIPCION { get; set; }

        public Cliente Cliente { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<ReporteCliente> ReadAll()
        {
            return this.db.REPORTECLIENTE.Select(r => new ReporteCliente()
            {
                ID_REPORTC = r.ID_REPORTC,
                CLIENTES_RUT_CLIENT = r.CLIENTES_RUT_CLIENT,
                FECHA = r.FECHA,
                DESCRIPCION = r.DESCRIPCION,

                Cliente = new Cliente()
                {
                    Rut_cliente = r.CLIENTES_RUT_CLIENT,
                    Nombre = r.CLIENTES.NOMBRE,
                    Direccion = r.CLIENTES.DIRECCION,
                    Telefono = r.CLIENTES.TELEFONO,
                    Correo = r.CLIENTES.CORREO,
                    Rubro = r.CLIENTES.RUBRO
                }

            }).ToList();
        }
    }
}