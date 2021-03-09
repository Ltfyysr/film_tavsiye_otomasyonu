<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SenaristArama.aspx.cs" Inherits="Filmtavsiyevedegerlendirme.SenaristArama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SenaristDetay.aspx">Senarist Detay Sayfasına Gitmek İçin Tıklayınız.</asp:HyperLink>
        </div>
    </form>
</body>
</html>
