<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Budget.Account.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <link rel="stylesheet" type="text/css" href="~/Style/Login.css">
    <title></title>
</head>
<body >
    <form runat="server" class="column">
        <div class="con">
            
            <div class="movetop">
                <asp:Label ID="lblemailid" runat="server" Text="Email ID"></asp:Label>
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                <asp:Button ID="btnregister" runat="server" Text="New User/Register" OnClick="btnregister_Click" />
            </div>
            <asp:Label ID="lbldisplay" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
