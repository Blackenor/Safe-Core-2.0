using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class ReporteGlobal
    {
        public decimal ID_REPORTG { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
        public DateTime FECHA { get; set; }
        public string DESCRIPCION { get; set; }

        public Cliente Cliente { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<ReporteGlobal> ReadAll()
        {
            return this.db.REPORTEGLOBAL.Select(r => new ReporteGlobal()
            {
                ID_REPORTG = r.ID_REPORTG,
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


        public bool Create()
        {
            try
            {
                db.SP_CREATE_REPORTEGLOBAL(this.ID_REPORTG, this.CLIENTES_RUT_CLIENT, this.FECHA, this.DESCRIPCION);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
