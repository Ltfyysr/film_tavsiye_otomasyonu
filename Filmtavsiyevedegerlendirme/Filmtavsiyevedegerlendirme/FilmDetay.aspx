<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilmDetay.aspx.cs" Inherits="Filmtavsiyevedegerlendirme.FilmDetay" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Kitabın Resmi:
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="FilmID" DataSourceID="SqlDataSource1" EnableViewState="False">
                <Columns>
                    <asp:BoundField DataField="FilmID" HeaderText="FilmID" InsertVisible="False" ReadOnly="True" SortExpression="FilmID" />
                    <asp:BoundField DataField="FilmAdi" HeaderText="Film Ad" SortExpression="FilmAdi" />
                    <asp:BoundField DataField="FilmSure" HeaderText="Film Süre" SortExpression="FilmSure" />
                    <asp:BoundField DataField="Kategori" HeaderText="Film Kategori" SortExpression="Kategori" />
                    <asp:BoundField DataField="FilmYonetmen" HeaderText="Film Yonetmeni" SortExpression="FilmYonetmen" />
                    <asp:BoundField DataField="FilmSenarist" HeaderText="Film Senaristi" SortExpression="FilmSenarist" />
                    <asp:BoundField DataField="Inceleme" HeaderText="Inceleme" SortExpression="Inceleme" />
                    <asp:BoundField DataField="Cumle" HeaderText="Cumle" SortExpression="Cumle" />
                 
                    <asp:BoundField DataField="IzleyiciSayisi" HeaderText="Izleyici Sayisi" SortExpression="IzleyiciSayisi" />
                
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Desktop\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security = True; Connect Timeout = 30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT FilmTanim.FilmID, FilmTanim.FilmAdi, FilmTanim.FilmSure,FilmTanim.Kategori,FilmTanim.FilmYonetmen, FilmTanim.FilmSenarist, FilmTanim.IzleyiciSayisi,FilmInceleme.Inceleme, FilmAlintiSoz.Cumle FROM FilmTanim INNER JOIN FilmInceleme ON FilmTanim.FilmID = FilmInceleme.FilmID INNER JOIN FilmAlintiSoz ON FilmTanim.FilmID = FilmAlintiSoz.FilmID WHERE (FilmTanim.FilmID = @FilmID)">
                <SelectParameters>
                    <asp:SessionParameter Name="FilmID" SessionField="FilmID" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            
           
           
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FilmKayit.aspx">Film Kaydı</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
           
        </div>
    </form>
</body>
</html>

