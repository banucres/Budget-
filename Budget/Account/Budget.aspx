<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Budget.aspx.cs" Inherits="Budget.Account.Budget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/Style/Budget.css">
</head>
<body>
    <div class="contai">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="lblwelcome" runat="server"></asp:Label>
            </div>
            <div>
                <h1>Create your Budget</h1>
                <h3>Enter amount you wish to spend for particular category:</h3>
                <asp:TextBox ID="txtincome" runat="server" onkeydown="return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106) && event.keyCode!=32);"></asp:TextBox>
            </div>
            <div>
                Choose Category:
            <asp:DropDownList ID="ddlcategory" runat="server">
            </asp:DropDownList>
            </div>
            <div>
                Set Interval:
            <asp:DropDownList ID="ddtinterval" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Monthly</asp:ListItem>
                <asp:ListItem>Biweekly</asp:ListItem>
                <asp:ListItem>Once</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div>
                <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" />
            </div>
            <asp:Repeater ID="rptbudget" runat="server">
                <HeaderTemplate>
                    <table id="tblbudget">
                        <tr>
                            <th>Userid</th>
                            <th>Interval</th>
                            <th>CategoryshortName</th>
                            <th>Amount</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lbluserid" runat="server" Text='<%# Eval("Userid") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblinterval" runat="server" Text='<%# Eval("Interval") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblcategoryname" runat="server" Text='<%# Eval("CategoryshortName") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblamount" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:Button ID="btnnext" runat="server" Text="NextPage" OnClick="btnnext_Click" />
        </form>
    </div>
</body>
</html>
