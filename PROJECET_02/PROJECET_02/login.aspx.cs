using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PROJECET_02.bebloiTableAdapters;
namespace PROJECET_02
{
    public partial class login : System.Web.UI.Page
    {
        bebloi b = new bebloi();
        EtudiantTableAdapter et = new EtudiantTableAdapter();
        AdmnisitrateurTableAdapter adm = new AdmnisitrateurTableAdapter();
        DirecteurTableAdapter dir = new DirecteurTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            et.Fill(b.Etudiant);
            adm.Fill(b.Admnisitrateur);
            dir.Fill(b.Directeur);
            if (IsPostBack)
            {
                Error_label.Visible = true;
            }
        }

        protected void sumbmit_Click(object sender, EventArgs e)
        {
            var etu = et.GetData().Where(i => i.Email == username.Text && i.Pass == password.Text);
            var ad = adm.GetData().Where(i => i.EMAIL == username.Text && i.Pass == password.Text);
            var di = dir.GetData().Where(i => i.EMAIL == username.Text && i.PASS == password.Text);
            if(etu !=null || ad !=null || di != null)
            {

            }
            
        }
    }
}