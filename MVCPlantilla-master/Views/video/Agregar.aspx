<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Agregar</title>
</head>
<body>

<h1>A G R E G A R</h1>

    <p style="color:#CC66FF";>Sigue la continuación del id para que no haya problemas al agregarlo. ACTUAL:  
    "<%: ((System.Data.DataTable)ViewData["video"]).Rows.Count %>"</p>
        <hr />
  
        <br />
        <form action="/video/Agregar" method=post>
        <fieldset>
        <legend>Datos del video</legend>

        <label for="idVideo">idVideo</label>
        <input type="text" name="idVideo" />

        <label for="titulo">titulo</label>
        <input type="text" name="titulo" /> 
         
        <label for="reproducciones">reproducciones</label>
        <input type="text" name="reproducciones" /> 

        <label for="url">url</label>
        <input type="text" name="url" /> 
            <br />

        <input type="submit" value="Agregar" />

        </fieldset>
        </form>

        <a href="http://localhost:4746/">Volver.</a><hr />

</body>
</html>
