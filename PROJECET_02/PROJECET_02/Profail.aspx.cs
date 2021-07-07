using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PROJECET_02.bebloiTableAdapters;
namespace PROJECET_02
{
    public partial class Profail : System.Web.UI.Page
    {
        bebloi b = new bebloi();
        LivreTableAdapter li = new LivreTableAdapter();
        EtudiantTableAdapter et = new EtudiantTableAdapter();
        bebloi.LivreDataTable livre =new bebloi.LivreDataTable();
        int u;
        protected void Page_Load(object sender, EventArgs e)
        {
            li.Fill(b.Livre); ;
            et.Fill(b.Etudiant);
             livre = li.GetData();
            var et1=et.GetData().FirstOrDefault(i => i.ID_Etude == 1);
            first_name.Text = et1.Nom_Etude;
            last_name.Text = et1.Prenom_Etude;
            email.Text = et1.Email;
            first_name.Enabled = false;
            last_name.Enabled = false;
        }

        void ex(string titre, string des, string photo)
        {
         //   Response.Write("<script>alert('" + photo + "');</script>");
            Response.Write("<script>alert('fffffffffffffff');</script>");
            //string s = "<div class='item'><asp:Image ID='Image1' runat='server' ImageUrl='" + photo + "' class='card-img-top' alt=''><div class='card-body'/> <h5 class='card-title'>" + titre + "</h5><p class='card-text'>" + des + "</p><a href = '' class='btn btn-primary'>Go somewhere</a></div></div>";
            //Response.Write(s);
        }
        protected void btnLivre_Click(object sender, EventArgs e)
        {
            
            for (int i = 0; i < livre.Count; i++)
            {
                ex(livre[i].Titre_Livre, livre[i].description, livre[i].photo);
            }
        }
    }
}