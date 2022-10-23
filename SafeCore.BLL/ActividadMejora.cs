using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class ActividadMejora
    {
        public decimal ID_ACTIVIDADMEJORA { get; set; }
        public string NOMBREMEJORA { get; set; }
        public string DESCRIPCIONMEJORA { get; set; }

        SafeCoreEntities db = new SafeCoreEntities();

        public List<ActividadMejora> ReadAll()
        {
            return this.db.ACTIVIDADMEJORA.Select(a => new ActividadMejora()
            {
                ID_ACTIVIDADMEJORA = a.ID_ACTIVIDADMEJORA,
                NOMBREMEJORA = a.NOMBREMEJORA,
                DESCRIPCIONMEJORA = a.DESCRIPCIONMEJORA

            }).ToList();
        }

        public bool Create()
        {
            try
            {
                db.SP_CREATE_ACTIVIDADMEJORA(this.ID_ACTIVIDADMEJORA, this.NOMBREMEJORA, this.DESCRIPCIONMEJORA);

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
