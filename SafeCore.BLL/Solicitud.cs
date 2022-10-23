using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class Solicitud
    {
        public decimal ID_SOLICITUD { get; set; }
        public DateTime FECHA { get; set; }
        public string DESCRIPCION { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
        public decimal TIPOSOLICITUD_ID_TIPOSOLICITUD { get; set; }

        public Cliente Cliente { get; set; }
        public TipoSolicitud TipoSolicitud { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<Solicitud> ReadAll()
        {
            return this.db.SOLICITUD.Select(s => new Solicitud()
            {
                ID_SOLICITUD = s.ID_SOLICITUD,
                FECHA = s.FECHA,
                DESCRIPCION = s.DESCRIPCION,
                CLIENTES_RUT_CLIENT = s.CLIENTES_RUT_CLIENT,
                TIPOSOLICITUD_ID_TIPOSOLICITUD = s.TIPOSOLICITUD_ID_TIPOSOLICITUD,

                Cliente = new Cliente()
                {
                    Rut_cliente = s.CLIENTES_RUT_CLIENT,
                    Nombre = s.CLIENTES.NOMBRE,
                    Direccion = s.CLIENTES.DIRECCION,
                    Telefono = s.CLIENTES.TELEFONO,
                    Correo = s.CLIENTES.CORREO,
                    Rubro = s.CLIENTES.RUBRO
                },

                TipoSolicitud = new TipoSolicitud()
                {
                    ID_TIPOSOLICITUD = s.TIPOSOLICITUD.ID_TIPOSOLICITUD,
                    TIPOSOLICITUD = s.TIPOSOLICITUD.TIPOSOLICITUD1
                }

                

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_SOLICITUD(this.ID_SOLICITUD, this.FECHA, this.DESCRIPCION, this.CLIENTES_RUT_CLIENT, this.TIPOSOLICITUD_ID_TIPOSOLICITUD);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
