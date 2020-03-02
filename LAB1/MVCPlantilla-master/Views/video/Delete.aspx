<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
</head>
<body>
    
    <h1>E L I M I N A R</h1>
        <br />
        <h4>  Hay <%: ((System.Data.DataTable)ViewData["video"]).Rows.Count %> videos.</h4>
        <br />
        <form action="/video/Delete" method=post>
        <fieldset>
        <legend>id del video que deseas eliminar: </legend>

        <label for="idVideo">idVideo</label>
        <input type="text" name="idVideo" />
        <br />
        <input type="submit" value="Eliminar" />
        </fieldset>
        </form>

</body>
</html>
