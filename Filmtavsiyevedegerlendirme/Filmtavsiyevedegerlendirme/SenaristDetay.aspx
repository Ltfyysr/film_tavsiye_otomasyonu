<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SenaristDetay.aspx.cs" Inherits="Filmtavsiyevedegerlendirme.SenaristDetay" %>

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
                    <asp:BoundField DataField="SenaristAdi" HeaderText="Adı" SortExpression="SenaristAdi" />
                    <asp:BoundField DataField="SenaristSoyadi" HeaderText="Soyad" SortExpression="SenaristSoyadi" />
                    <asp:BoundField DataField="SenaristYas" HeaderText="Yaşı" SortExpression="SenaristYas" />
                    <asp:BoundField DataField="FilmAdi" HeaderText="Filmin Ismi" SortExpression="FilmAdi" />
                    <asp:BoundField DataField="FilmID" HeaderText="FilmID" InsertVisible="False" ReadOnly="True" SortExpression="FilmID" Visible="False" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Desktop\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security = True; Connect Timeout = 30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT SenaristTanim.SenaristAdi, SenaristTanim.SenaristSoyadi,SenaristTanim.SenaristYas, FilmTanim.FilmAdi, FilmTanim.FilmID FROM SenaristTanim INNER JOIN FilmTanim ON FilmTanim.SenaristID = SenaristTanim.SenaristID WHERE (SenaristTanim.SenaristID = @SenaristID)">
                <SelectParameters>
                    <asp:SessionParameter Name="SenaristID" SessionField="SenaristID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Anasayfa.aspx">Anasayfaya dönmek için tıklayınız</asp:HyperLink>
            <br />
            <br />
            
       </div>
    </form>
</body>
</html>
