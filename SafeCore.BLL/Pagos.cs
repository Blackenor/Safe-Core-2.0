using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;

namespace SafeCore.BLL
{
    public class Pagos
    {
        public decimal ID_PAGO { get; set; }
        public DateTime FECHA { get; set; }
        public decimal MONTO { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }

        public Cliente Cliente { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<Pagos> ReadAll()
        {
            return this.db.PAGOS.Select(p => new Pagos()
            {
                ID_PAGO = p.ID_PAGO,
                FECHA = p.FECHA,
                MONTO = p.MONTO,
                CLIENTES_RUT_CLIENT = p.CLIENTES_RUT_CLIENT,

                Cliente = new Cliente()
                {
                    Rut_cliente = p.CLIENTES_RUT_CLIENT,
                    Nombre = p.CLIENTES.NOMBRE,
                    Direccion = p.CLIENTES.DIRECCION,
                    Telefono = p.CLIENTES.TELEFONO,
                    Correo = p.CLIENTES.CORREO,
                    Rubro = p.CLIENTES.RUBRO
                }

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_PAGOS(this.ID_PAGO, this.FECHA, this.MONTO, this.CLIENTES_RUT_CLIENT);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
