using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SafeCore.DAL;

namespace SafeCore.BLL
{
    public class Checklist
    {
        public decimal ID_CHECK { get; set; }
        public decimal VISITASTERRENO_ID_VISITA { get; set; }
        public string FIELD01 { get; set; }
        public string FIELD02 { get; set; }
        public string FIELD03 { get; set; }
        public string FIELD04 { get; set; }
        public string FIELD05 { get; set; }
        public string FIELD06 { get; set; }
        public string FIELD07 { get; set; }
        public string FIELD08 { get; set; }
        public string FIELD09 { get; set; }
        public string FIELD10 { get; set; }
        public string FIELD11 { get; set; }
        public string FIELD12 { get; set; }
        public string FIELD13 { get; set; }
        public string FIELD14 { get; set; }
        public string FIELD15 { get; set; }

        public VisitasTerreno VisitasTerreno { get; set; }

        SafeCoreEntities db = new SafeCoreEntities();

        public List<Checklist> ReadAll()
        {
            return this.db.CHECKLIST.Select(c => new Checklist()
            {
                ID_CHECK = c.ID_CHECK,
                VISITASTERRENO_ID_VISITA = c.VISITASTERRENO_ID_VISITA,
                FIELD01 = c.FIELD01,
                FIELD02 = c.FIELD02,
                FIELD03 = c.FIELD03,
                FIELD04 = c.FIELD04,
                FIELD05 = c.FIELD05,
                FIELD06 = c.FIELD06,
                FIELD07 = c.FIELD07,
                FIELD08 = c.FIELD08,
                FIELD09 = c.FIELD09,
                FIELD10 = c.FIELD10,
                FIELD11 = c.FIELD11,
                FIELD12 = c.FIELD12,
                FIELD13 = c.FIELD13,
                FIELD14 = c.FIELD14,
                FIELD15 = c.FIELD15,

                VisitasTerreno = new VisitasTerreno()
                {
                    ID_VISITA = c.VISITASTERRENO.ID_VISITA,
                    FECHAVISITA = c.VISITASTERRENO.FECHAVISITA,
                    PROFESIONAL_RUT_PROF = c.VISITASTERRENO.PROFESIONAL_RUT_PROF,
                    CLIENTES_RUT_CLIENT = c.VISITASTERRENO.CLIENTES_RUT_CLIENT
                }

            }).ToList();
        }

        public List<Checklist> ReadOne(int ID)
        {
            return this.db.CHECKLIST
            .Where(c => c.ID_CHECK == ID)    
            .Select(c => new Checklist()
            {
                ID_CHECK = c.ID_CHECK,
                VISITASTERRENO_ID_VISITA = c.VISITASTERRENO_ID_VISITA,
                FIELD01 = c.FIELD01,
                FIELD02 = c.FIELD02,
                FIELD03 = c.FIELD03,
                FIELD04 = c.FIELD04,
                FIELD05 = c.FIELD05,
                FIELD06 = c.FIELD06,
                FIELD07 = c.FIELD07,
                FIELD08 = c.FIELD08,
                FIELD09 = c.FIELD09,
                FIELD10 = c.FIELD10,
                FIELD11 = c.FIELD11,
                FIELD12 = c.FIELD12,
                FIELD13 = c.FIELD13,
                FIELD14 = c.FIELD14,
                FIELD15 = c.FIELD15,

                VisitasTerreno = new VisitasTerreno()
                {
                    ID_VISITA = c.VISITASTERRENO.ID_VISITA,
                    FECHAVISITA = c.VISITASTERRENO.FECHAVISITA,
                    PROFESIONAL_RUT_PROF = c.VISITASTERRENO.PROFESIONAL_RUT_PROF,
                    CLIENTES_RUT_CLIENT = c.VISITASTERRENO.CLIENTES_RUT_CLIENT
                }

            }).ToList();
        }



        public bool Create()
        {
            try
            {
                db.SP_CREATE_CHECKLIST(this.VISITASTERRENO_ID_VISITA, this.FIELD01,
                                                                        this.FIELD02,
                                                                        this.FIELD03,
                                                                        this.FIELD04,
                                                                        this.FIELD05,
                                                                        this.FIELD06,
                                                                        this.FIELD07,
                                                                        this.FIELD08,
                                                                        this.FIELD09,
                                                                        this.FIELD10,
                                                                        this.FIELD11,
                                                                        this.FIELD12,
                                                                        this.FIELD13,
                                                                        this.FIELD14,
                                                                        this.FIELD15);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
