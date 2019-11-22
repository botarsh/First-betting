<%@ page language="VB" autoeventwireup="false" inherits="aga_FutbolXeberleri_fNews, App_Web_addfeaturedgame.aspx.94c45623" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Add Featured Game Poll</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="vertical-align: middle; width: 311px; height: 28px; text-align: center">
            <tr>
                <td colspan="2" style="font-size: 11pt; color: white; font-family: Tahoma; height: 30px;
                    background-color: #000099">
                    <strong>Canlı Oyun</strong></td>
            </tr>
            <tr>
                <td style="width: 597px; height: 24px; text-align: right;">
                    Birinci Komanda:
                    <asp:TextBox ID="kom1" runat="server" Width="155px"></asp:TextBox></td>

            </tr>
            <tr>
                <td colspan="2" style="height: 14px; text-align: right;">
                    Birinci Komanda Səsi:
                    <asp:TextBox ID="ses1" runat="server" ReadOnly="True" Width="155px">1</asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: right">
                    İP Adresi:<asp:TextBox ID="ip1" runat="server" Height="17px" Width="155px">10.10.10.10</asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: right">
                    İkinci Komanda:
                    <asp:TextBox ID="kom2" runat="server" Width="155px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: right">
                    İkinci Komanda Səsi:
                    <asp:TextBox ID="ses2" runat="server" ReadOnly="True" Width="155px">1</asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: right">
                    İP Adresi:<asp:TextBox ID="ip2" runat="server" Height="17px" Width="155px">10.10.10.10</asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAddFeatured" runat="server" Font-Bold="True" Height="46px"
                        Text="Komandaları əlavə et" Width="167px" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
