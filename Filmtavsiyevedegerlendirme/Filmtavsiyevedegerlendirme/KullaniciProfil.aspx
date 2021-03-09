<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciProfil.aspx.cs" Inherits="Filmtavsiyevedegerlendirme.KullaniciProfil" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
             Kullanıcı Resim:&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" />
            <br />
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Isim" HeaderText="Isim" SortExpression="Isim" />
                    <asp:BoundField DataField="Soyisim" HeaderText="Soyisim" SortExpression="Soyisim" />
                    <asp:BoundField DataField="FilmAdi" HeaderText="Izlediği Film Ismi" SortExpression="FilmAdi" />
                    <asp:BoundField DataField="Puan" HeaderText="Puan" SortExpression="Puan" />
                    <asp:BoundField DataField="Inceleme" HeaderText="Inceleme" SortExpression="Inceleme" />
                    <asp:BoundField DataField="Cumle" HeaderText="Cumle" SortExpression="Cumle" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Desktop\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security = True; Connect Timeout = 30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT KullaniciTanim.Isim, KullaniciTanim.Soyisim, FilmTanim.FilmAdi, FilmPuan.Puan, FilmInceleme.Inceleme, FilmAlintiSoz.Cumle FROM KullaniciTanim INNER JOIN FilmTanim ON KullaniciTanim.KullaniciID = FilmTanim.FilmID INNER JOIN FilmPuan ON FilmTanim.KullaniciID = FilmPuan.KullaniciID INNER JOIN FilmInceleme ON FilmPuan.KullaniciID = FilmInceleme.KullaniciID INNER JOIN FilmAlintiSoz ON FilmInceleme.KullaniciID = FilmAlintiSoz.KullaniciID WHERE (FilmAlintiSoz.KullaniciID = @KullaniciID)">
                <SelectParameters>
                    <asp:SessionParameter Name="KullaniciID" SessionField="KullaniciID" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
           
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~Anasayfa.aspx">Anasayafaya gitmek için tıklayınız</asp:HyperLink>
            
            <br />
            <br />
            </form>
</body>
</html>

