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
    
    public partial class VISITASTERRENO
    {
        public VISITASTERRENO()
        {
            this.CHECKLIST = new HashSet<CHECKLIST>();
        }
    
        public int ID_VISITA { get; set; }
        public System.DateTime FECHAVISITA { get; set; }
        public string PROFESIONAL_RUT_PROF { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
    
        public virtual CLIENTES CLIENTES { get; set; }
        public virtual PROFESIONAL PROFESIONAL { get; set; }
        public virtual ICollection<CHECKLIST> CHECKLIST { get; set; }
    }
}
