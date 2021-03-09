<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YonetmenDetay.aspx.cs" Inherits="Filmtavsiyevedegerlendirme.YonetmenDetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="FilmID">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="YonetmenAdi" HeaderText="Adı" SortExpression="YonetmenAdi" />
                    <asp:BoundField DataField="YonetmenSoyadi" HeaderText="Soyadı" SortExpression="YonetmenSoyadi" />
                    <asp:BoundField DataField="YonetmenYas" HeaderText="Yaş" SortExpression="YonetmenYas" />
                    <asp:BoundField DataField="FilmAdi" HeaderText="Filmin İsmi" SortExpression="FilmAdi" />
                    <asp:BoundField DataField="FilmID" HeaderText="FilmID" InsertVisible="False" ReadOnly="True" SortExpression="FilmID" Visible="False" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Desktop\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security = True; Connect Timeout = 30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT YonetmenTanim.YonetmenAdi, YonetmenTanim.YonetmenSoyadi, YonetmenTanim.YonetmenYas, YonetmenTanim.Cinsiyet, FilmTanim.FilmAdi, FilmTanim.FilmID FROM YonetmenTanim INNER JOIN FilmTanim ON YonetmenTanim.YonetmenID = FilmTanim.YonetmenID WHERE (FilmTanim.YonetmenID = @YonetmenID)">
                <SelectParameters>
                    <asp:SessionParameter Name="YonetmenID" SessionField="YonetmenID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~Anasayfa.aspx">Anasayfaya gitmek için tıklayınız</asp:HyperLink>
            <br />
            <br />
            <br />
         .</div>
    </form>
</body>
</html>
