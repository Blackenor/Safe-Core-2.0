using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class Servicio
    {
        public decimal ID_SERV { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
        public string DESCRIPCION { get; set; }
        public DateTime FECHASERVICIO { get; set; }
        public decimal VALOR { get; set; }
        public string PROFESIONAL_RUT_PROF { get; set; }

        public Cliente Cliente { get; set; }
        public Profesional Profesional { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<Servicio> ReadAll()
        {
            return this.db.SERVICIO.Select(s => new Servicio()
            {
                ID_SERV = s.ID_SERV,
                CLIENTES_RUT_CLIENT = s.CLIENTES_RUT_CLIENT,
                DESCRIPCION = s.DESCRIPCION,
                FECHASERVICIO = s.FECHASERVICIO,
                VALOR = s.VALOR,
                PROFESIONAL_RUT_PROF = s.PROFESIONAL_RUT_PROF,

                Profesional = new Profesional()
                {
                    RUT_PROF = s.PROFESIONAL_RUT_PROF,
                    ACTIVO = s.PROFESIONAL.ACTIVO,
                    NOMBRE = s.PROFESIONAL.NOMBRE,
                    APELLIDO = s.PROFESIONAL.APELLIDO,
                    GENERO = s.PROFESIONAL.GENERO,
                    DIRECCION = s.PROFESIONAL.DIRECCION,
                    TELEFONO = s.PROFESIONAL.TELEFONO,
                    CORREO = s.PROFESIONAL.CORREO
                },

                Cliente = new Cliente()
                {
                    Rut_cliente = s.CLIENTES_RUT_CLIENT,
                    Nombre = s.CLIENTES.NOMBRE,
                    Direccion = s.CLIENTES.DIRECCION,
                    Telefono = s.CLIENTES.TELEFONO,
                    Correo = s.CLIENTES.CORREO,
                    Rubro = s.CLIENTES.RUBRO
                }

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_SERVICIO(this.CLIENTES_RUT_CLIENT, this.DESCRIPCION, this.FECHASERVICIO, this.VALOR, this.PROFESIONAL_RUT_PROF);

                return true;
            }
            catch
            {
                return false;
            }
        }

    }
}
