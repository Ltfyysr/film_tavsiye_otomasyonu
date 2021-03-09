<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Filmtavsiyevedegerlendirme.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 61%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
    <style>
        body { 
         background-image: url("data:image/jpeg;base64,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");}
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ana_div" id="iskelet">
           </div>

            <div class="div" id="div2">
                <hr />
               
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Anasayfa"></asp:Label>
              
                <hr />
            </div>
              <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FilmArama.aspx">Film Arama</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <h2>Tavsiye Sistemi:</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/SenaristArama.aspx">Senarist Arama</asp:HyperLink>
                    </td>
                    <td>Kullanıcı Öneri 1:<asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
            
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/YonetmenArama.aspx">Yönetmen Arama</asp:HyperLink>
                    </td>
                    <td class="auto-style2">Kullanıcı Öneri 2:<asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/KullanıcıArama.aspx">KullanıcıArama</asp:HyperLink>
                    </td>
                    <td>
                        Film Öneri1:<asp:GridView ID="GridView3" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/YüksekPuanliFilmler.aspx">YüksekPuanliFilmler</asp:HyperLink>
                    </td>
                
                     <td>
                        Film Öneri2:<asp:GridView ID="GridView4" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td >
                        
                        Film Öneri3:<asp:GridView ID="GridView5" runat="server">
                        </asp:GridView>
                    </td>
                      
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

