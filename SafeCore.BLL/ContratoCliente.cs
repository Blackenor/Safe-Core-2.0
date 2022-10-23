using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class ContratoCliente
    {
        public decimal ID_CONTR { get; set; }
        public string ACTIVO { get; set; }
        public DateTime FECHAINICIO { get; set; }
        public DateTime? FECHATERMINO { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
        public Cliente Cliente { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<ContratoCliente> ReadAll()
        {
            return this.db.CONTRATOCLIENT.Select(c => new ContratoCliente()
            {
                ID_CONTR = c.ID_CONTR,
                ACTIVO = c.ACTIVO,
                FECHAINICIO = c.FECHAINICIO,
                FECHATERMINO = c.FECHATERMINO,
                CLIENTES_RUT_CLIENT = c.CLIENTES_RUT_CLIENT,

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
                db.SP_CREATE_CONTRATOCLIENT(this.ID_CONTR, this.ACTIVO, this.FECHAINICIO, this.FECHATERMINO, this.CLIENTES_RUT_CLIENT);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
