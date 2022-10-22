using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class TipoSolicitud
    {
        public decimal ID_TIPOSOLICITUD { get; set; }
        public string TIPOSOLICITUD { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<TipoSolicitud> ReadAll()
        {
            return this.db.TIPOSOLICITUD.Select(t => new TipoSolicitud()
            {
                ID_TIPOSOLICITUD = t.ID_TIPOSOLICITUD,
                TIPOSOLICITUD = t.TIPOSOLICITUD1

            }).ToList();
        }

    }
}
