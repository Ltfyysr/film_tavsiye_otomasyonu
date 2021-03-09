<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="YüksekPuanliFilmler.aspx.cs" Inherits="Filmtavsiyevedegerlendirme.YüksekPuanliFilmler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="FilmID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="FilmID" HeaderText="FilmID" ReadOnly="True" SortExpression="FilmID" InsertVisible="False" />
                   
                    <asp:BoundField DataField="FilmAdi" HeaderText="Film Adı" ReadOnly="True" SortExpression="FilmAdi" />


                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Desktop\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security = True; Connect Timeout = 30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT FilmTanim.FilmID, AVG(FilmPuan.Puan) AS 'OrtPuan', (SELECT FilmAdi FROM FilmTanim WHERE (FilmID = FilmPuan.FilmID)) AS 'FilmAdi' FROM FilmPuan INNER JOIN FilmTanim AS FilmTanim ON FilmPuan.FilmID = FilmTanim.FilmID GROUP BY FilmPuan.FilmID, FilmTanim.FilmID ORDER BY 'OrtPuan' DESC"></asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Anasayfa.aspx">Anasayfaya Gitmek İçin Tıklayınız.</asp:HyperLink>
            <br />
            <br />
             </form>
</body>
</html>
