<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Safe_Core._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div id="login-Form">
            <form class="d-flex row container justify-content-center" role="form" runat="server">

                <div class="form-group">
                    <label class="form-label">Usuario</label>
                    <asp:TextBox class="form-control"  id="txtUsuario" placeholder="Usuario" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="form-label">Contraseña</label>
                    <asp:TextBox class="form-control" placeholder="Contraseña" id="txtPassword" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-custom">Iniciar sesión</button>
                </div>

                

            </form>
        </div>
</body>
</html>
