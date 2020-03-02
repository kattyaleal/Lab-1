using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data;
using System.Data.SqlClient;
using MVCPlantilla.Utilerias;

namespace MvcPlantilla.Controllers
{
    public class videoController : Controller
    {
//
        // GET: /video/
        public ActionResult VerVideo()
        {
            ViewData["video"] = BaseHelper.ejecutarConsulta(
                "SELECT * FROM video", CommandType.Text);
            return View();
        }


//AGREGAR
        public ActionResult Agregar()
        {
            ViewData["video"] = BaseHelper.ejecutarConsulta(
                   "SELECT * FROM video", CommandType.Text);
            return View();
        }
        [HttpPost]
        public ActionResult Agregar(int idVideo, string titulo, int reproducciones, string url)
    {
        //para guardar
        List<SqlParameter> parametros = new List<SqlParameter>();
        parametros.Add(new SqlParameter("@idVideo", idVideo));
        parametros.Add(new SqlParameter("@titulo", titulo));
        parametros.Add(new SqlParameter("@reproducciones", reproducciones));
        parametros.Add(new SqlParameter("@url", url));

        BaseHelper.ejecutarSentencia("INSERT INTO video " + "VALUES(@idVideo,@titulo," + "@reproducciones,@url)", CommandType.Text, parametros);
        return View("VideSubido"); //
    }

        public ActionResult VideoSubido ()
        {
            return View();
        }


//ELIMINAR
        public ActionResult Delete()
        {
            ViewData["video"] = BaseHelper.ejecutarConsulta(
                      "SELECT * FROM video", CommandType.Text);
            return View();
        }

        [HttpPost]
        public ActionResult Delete(int idVideo)
        {
            //para guardar
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));

            BaseHelper.ejecutarSentencia("DELETE FROM video " + "WHERE idVideo = @idVideo", CommandType.Text, parametros);

            return View("VideoEliminado");
        }
        public ActionResult VideoEliminado ()
        {
            return View();
        }


//MODIFICAR
        public ActionResult Update()
        {     
            return View();
        }

        [HttpPost]
        public ActionResult Update (int idVideo, string titulo, int reproducciones, string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@reproducciones", reproducciones));
            parametros.Add(new SqlParameter ("@url", url));
            BaseHelper.ejecutarSentencia("UPDATE video SET  idVideo = @idVideo, titulo = @titulo, reproducciones= @reproducciones, url = @url WHERE idVideo = @idVideo",CommandType.Text,parametros);
                            
            return View("VideoActualizado");
        }
        public ActionResult VideoActualizado()
        {
            return View();
        }
    }
}
