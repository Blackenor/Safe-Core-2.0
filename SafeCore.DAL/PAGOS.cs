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
    
    public partial class PAGOS
    {
        public int ID_PAGO { get; set; }
        public System.DateTime FECHA { get; set; }
        public int MONTO { get; set; }
        public string CLIENTES_RUT_CLIENT { get; set; }
    
        public virtual CLIENTES CLIENTES { get; set; }
    }
}
