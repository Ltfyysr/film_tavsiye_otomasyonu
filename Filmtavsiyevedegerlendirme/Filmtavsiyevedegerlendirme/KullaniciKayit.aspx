<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciKayit.aspx.cs" Inherits="Filmtavsiyevedegerlendirme.KullaniciKayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<    <style>
        .div {
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -50px;
            margin-top: -50px;
        }
        .panel {
            background-color:lavender;
        
        }
               .auto-style1 {
                   position: absolute;
                   left: 5%;
                   top: 31%;
                   margin-left: -50px;
                   margin-top: -50px;
                   width: 255px;
                   height: 346px;
               }
               .auto-style2 {
                   height: 53px;
               }
    </style>
     <style>
        body { 
         background-image: url("data:image/jpeg;base64,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");}
         </style>
</head>
<body class="panel">
    <form id="form1" runat="server" class="auto-style2" >
        <div class="auto-style1">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="İsim "></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Soyisim"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Cinsiyet"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="125px">
                <asp:ListItem>Bay</asp:ListItem>
                <asp:ListItem>Bayan</asp:ListItem>
            </asp:DropDownList>
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Doğum Tarihi"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="127px">
            </asp:DropDownList>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Fotoğraf"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server"  />
            <br />
&nbsp;&nbsp;<br />
            <asp:Button ID="Button1" runat="server" Text="Kaydet
                " Width="173px" OnClick="Button1_Click" />
              <br />
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/KullanıcıGiris.aspx">Giriş ekrenına geçiniz.</asp:HyperLink>
        </div>
            </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kullanıcı Kayıt Ekranı</form>

   
</body>
</html>

