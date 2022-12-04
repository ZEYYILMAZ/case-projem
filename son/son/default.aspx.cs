using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace son
{
    public partial class _default : System.Web.UI.Page
    {
        arabalar_vtEntities baglantı = new arabalar_vtEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNEKLE_Click(object sender, EventArgs e)
        {
            urunler urunekle = new urunler();
            
            urunekle.BRAND =TBXBRAND.Text;
            urunekle.PLATE =int.Parse (TBXPLACE.Text);
            urunekle.TYPE = TBXTYPE.Text;
            urunekle.COLOR = TBXCOLOR.Text;
            urunekle.CAPACITY = int.Parse (TBXCAPACITY.Text);
            urunekle.MODEL = TBXMODEL.Text;
            urunekle.MODEL_YEAR = DateTime.Parse (TBXYEAR.Text);
            urunekle.Id = int.Parse(TBXURUNKOD.Text);
            

            try
            {
                baglantı.urunler.Add(urunekle);
                baglantı.SaveChanges();
                LBLSONUC.Text = "KAYIT BAŞARI İLE TAMAMLANDI";
                
            }
            catch
            {
                LBLSONUC.Text = "KAYIT BAŞARI İLE TAMAMLANDI";
            }





                


        }

        protected void BTNLISTELE_Click(object sender, EventArgs e)
        {
          
            
            baglantı.urunler.Load();
            GridView1.DataSource = baglantı.urunler.Local;
            GridView1.DataBind();


        }

        protected void BTNSIL_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TBXURUNKOD.Text);
            var sorgu = (from kayıt in baglantı.urunler
                         where kayıt.Id == id
                         select kayıt).ToList();
            if(sorgu.Count==1)
            {
                baglantı.urunler.Remove(sorgu[0]);
                baglantı.SaveChanges();
                LBLSONUC.Text = "KAYIT BAŞARI İLE SİLİNDİ";

            }
            else
            {
                LBLSONUC.Text = "KAYIT BULUNAMADI YADA SORUN OLUŞTU";
            }

        }

        protected void BTNDUZENLE_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TBXURUNKOD.Text);
            var sorgu = (from kayıt in baglantı.urunler
                         where kayıt.Id == id
                         select kayıt).ToList();
            if(sorgu.Count==1)
            {
                sorgu[0].BRAND = TBXBRAND.Text;
                sorgu[0].MODEL = TBXMODEL.Text;
                sorgu[0].CAPACITY = Int16.Parse(TBXCAPACITY.Text) ;
                sorgu[0].PLATE = Int16.Parse(TBXPLACE.Text);
                sorgu[0].TYPE = TBXTYPE.Text;
                sorgu[0].MODEL_YEAR= DateTime.Parse(TBXYEAR.Text);
                sorgu[0].COLOR = TBXCOLOR.Text;
                baglantı.SaveChanges();
                LBLSONUC.Text = "KAYIT BAŞARI İLE GÜNCELLENDİ";



            }
            else
            {
                LBLSONUC.Text = "KAYIT BULUNAMADI YADA GUNCELLENMEDİ ";
            }


        }
    }
}