<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonthlyExpense.aspx.cs" Inherits="Budget.Account.MonthlyExpense" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#slider" ).slider();
  } );
  </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="rptbudget" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>Userid</th>
                            <th>Interval</th>
                            <th>CategoryShortName</th>
                            <th>Amount</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Userid") %>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Interval")%>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("CategoryShortName") %>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Amount") %>'></asp:Label></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate></table></FooterTemplate>
            </asp:Repeater>
        </div>
        <div id="slider">
            
        </div>
    </form>
</body>
</html>
