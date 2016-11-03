<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Budget.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="~/Style/Registration.css">
    <title></title>
</head>
<body>
    <form  runat="server">
        <div class="contai">
        <div class="page-header">
            LOGO for the Budget application
        </div>
        <div class="end">
            <asp:Label ID="lblfirstname" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="txtfirstname" runat="server" Width="150px"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lbllastname" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtlastname" runat="server" Width="150px"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblemailid" runat="server" Text="Email id"></asp:Label>

            <asp:TextBox ID="txtemailid" runat="server" Width="150px"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>

            <asp:TextBox ID="txtpassword" runat="server" Width="150px"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblrepassword" runat="server" Text="Re-Enter Password"></asp:Label>

            <asp:TextBox ID="txtrepassword" runat="server" Width="150px"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnregister" runat="server" Text="Registration" Height="22px" Width="95px" OnClick="btnregister_Click" />
        </div>
        <asp:TextBox ID="txtdbdone" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
