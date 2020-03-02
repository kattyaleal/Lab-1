<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Update</title>
</head>
<body>
    
     <h1>M O D I F I C A R</h1>
        <br />
        <form action="/video/Update" method="post">
        <fieldset>

        <legend>idVideo del video a actualizar</legend>
        <label for="idVideo">idVideo</label>
        <input type="text" name="idVideo" />
            <br />
            <hr />
            <legend>Datos:</legend>
            <label for="idVideo">iVideo</label>
            <input  type="text" name="idVideo"/>

            <label for="titulo">titulo</label>
            <input type="text" name="titulo" />

            <label for="reproducciones">reproducciones</label>
            <input type="text" name="reproducciones" />

            <label for="url">url</label>
            <input type="text" name="url" />
            <br />
            <input type="submit" value="Actualizar"/>
        </fieldset>
        </form>

        <a href="http://localhost:4746/">Volver.</a><hr />

</body>
</html>
