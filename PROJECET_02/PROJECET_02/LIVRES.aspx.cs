using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PROJECET_02.bebloiTableAdapters;

namespace PROJECET_02
{
    public partial class LIVRES : System.Web.UI.Page
    {
        //string cat = "";
        bool finding=false;
        string f = "";
        void ex(string titre, string des, string photo)
        {
            // Response.Write("<script>alert('" + photo + "');</script>");
            //   Response.Write("<script>alert('fffffffffffffff');</script>");
           // Response.Write("<script>alert('" + Session["cat"] + "');</script>");
            string s = "<div class='card' style='width: 18rem; '><img src=" + photo + " runat='server'  class='card-img-top' alt=''><div class='card-body'/> <h5 class='card-title'>" + titre + "</h5><p class='card-text'>" + des + "</p><a href = '' class='btn btn-primary'>EMPRUNT</a></div></div>";
            items.InnerHtml+= s;
        }
        bebloi b = new bebloi();
        LivreTableAdapter li = new LivreTableAdapter();
        EtudiantTableAdapter et = new EtudiantTableAdapter();
        bebloi.LivreDataTable livre = new bebloi.LivreDataTable();
        CategorieTableAdapter ca = new CategorieTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            PreLoad += LIVRES_PreLoad;
            PreRender += LIVRES_PreRender;
            // Response.Write(" <ul class='nav nav-tabs'><li class='active'><a data-toggle='tab' href='#home'>Home</a></li><li><a data-toggle='tab' href='#messages'>Menu 1</a></li><li><a data-toggle='tab' href='#settings' >LIVRE</a></li><li><a data-toggle='tab' href='#settings' class='logout' >LOGOUT</a></li></ul>");
            li.Fill(b.Livre); ;
            et.Fill(b.Etudiant);
            livre = li.GetData();
            var et1 = et.GetData().FirstOrDefault(i => i.ID_Etude == 1);
            //DropDownList1.DataTextField = "Nom_Cat";
            // Response.Write("")
            items.InnerHtml = "";
            Response.Write("<script>alert('" + finding.ToString() + f + "');</script>");
            if (!IsPostBack)
            {
//                Response.Write("<script>alert('!postBACK');</script>");
                for (int i = 0; i < livre.Count; i++)
            {
                ex(livre[i].Titre_Livre, livre[i].description, livre[i].photo);
            }
            }
           
            else
            {
                
               
              
            }
        }

        private void LIVRES_PreRender(object sender, EventArgs e)
        {
            //  Response.Write("<script>alert('PreRendre  " + Session["cat"] + "');</script>");
            if (finding)
            {

                for (int i = 0; i < livre.Count; i++)
                {

                    if (livre[i].Titre_Livre.Contains(f))
                        //Response.Write("<script>alert('" + livre[i].CategorieRow.Nom_Cat.ToString() + "');</script>");
                        ex(livre[i].Titre_Livre, livre[i].description, livre[i].photo);

                }

            }
            else { DropDownList2_SelectedIndexChanged(sender, e);

                //  Response.Write("<script>alert('" + Session["cat"] + "');</script>");
                for (int i = 0; i < livre.Count; i++)
                {

                    if (livre[i].ID_Cat == DropDownList2.SelectedIndex + 1)
                        //Response.Write("<script>alert('" + livre[i].CategorieRow.Nom_Cat.ToString() + "');</script>");
                        ex(livre[i].Titre_Livre, livre[i].description, livre[i].photo);

                }
            }


        }

        private void LIVRES_PreLoad(object sender, EventArgs e)
        {

            Session["cat"] = "romain";
          //  Response.Write("<script>alert('PreLoad  " + Session["cat"] + "');</script>");
        }

        protected void btn_Click(object sender, EventArgs e)
        {

            


        }

        protected void btn_Load(object sender, EventArgs e)
        {
          

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            items.Load += Items_Load;
        }

        private void Items_Load(object sender, EventArgs e)
        {
       //  Session["cat"]=((Button)sender).Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
          
            //Session["cat"]=categ;
            //Response.Write("<script>alert('" + Session["cat"] + "');</script>");
            //}
          
     
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            finding = false;
            Session["cat"] = DropDownList2.SelectedIndex+1;
        }

        protected void find_Click(object sender, EventArgs e)
        {
            f = sherche.Text;
            finding = true;
            Response.Write("<script>alert('butttton " + finding.ToString() + f + "');</script>");
        }
    }
}