//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SafeCore.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class CLIENTES
    {
        public CLIENTES()
        {
            this.CONTRATOCLIENT = new HashSet<CONTRATOCLIENT>();
            this.PAGOS = new HashSet<PAGOS>();
            this.REPORTEACCIDENTE = new HashSet<REPORTEACCIDENTE>();
            this.REPORTECLIENTE = new HashSet<REPORTECLIENTE>();
            this.REPORTEGLOBAL = new HashSet<REPORTEGLOBAL>();
            this.SERVICIO = new HashSet<SERVICIO>();
            this.SOLICITUD = new HashSet<SOLICITUD>();
            this.VISITASTERRENO = new HashSet<VISITASTERRENO>();
        }
    
        public string RUT_CLIENT { get; set; }
        public string NOMBRE { get; set; }
        public string DIRECCION { get; set; }
        public string TELEFONO { get; set; }
        public string CORREO { get; set; }
        public string RUBRO { get; set; }
    
        public virtual ICollection<CONTRATOCLIENT> CONTRATOCLIENT { get; set; }
        public virtual ICollection<PAGOS> PAGOS { get; set; }
        public virtual ICollection<REPORTEACCIDENTE> REPORTEACCIDENTE { get; set; }
        public virtual ICollection<REPORTECLIENTE> REPORTECLIENTE { get; set; }
        public virtual ICollection<REPORTEGLOBAL> REPORTEGLOBAL { get; set; }
        public virtual ICollection<SERVICIO> SERVICIO { get; set; }
        public virtual ICollection<SOLICITUD> SOLICITUD { get; set; }
        public virtual ICollection<VISITASTERRENO> VISITASTERRENO { get; set; }
    }
}
