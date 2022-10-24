using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class ReporteAccidente
    {
        public decimal ID_REPORTA { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
        public DateTime FECHAACCIDENTE { get; set; }
        public string DESCRIPCION { get; set; }

        public Cliente Cliente { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<ReporteAccidente> ReadAll()
        {
            return this.db.REPORTEACCIDENTE.Select(r => new ReporteAccidente()
            {
                ID_REPORTA = r.ID_REPORTA,
                CLIENTES_RUT_CLIENT = r.CLIENTES_RUT_CLIENT,
                FECHAACCIDENTE = r.FECHAACCIDENTE,
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
                db.SP_CREATE_REPORTEACCIDENTE(this.CLIENTES_RUT_CLIENT, this.FECHAACCIDENTE, this.DESCRIPCION);

                return true;
            }
            catch
            {
                return false;
            }
        }

    }
}
