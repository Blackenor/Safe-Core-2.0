using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;


namespace SafeCore.BLL
{
    public class Rol
    {
        public decimal ID_ROL { get; set; }
        public string NOMBREROL { get; set; }


        SafeCoreEntities db = new SafeCoreEntities();

        public List<Rol> ReadAll()
        {
            return this.db.ROL.Select(r => new Rol()
            {
                ID_ROL = r.ID_ROL,
                NOMBREROL = r.NOMBREROL
            }).ToList();
        }


        // NO TIENE SP

    }
}
