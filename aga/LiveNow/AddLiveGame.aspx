<%@ page language="VB" autoeventwireup="false" inherits="aga_FutbolXeberleri_fNews, App_Web_addlivegame.aspx.94c45623" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Add Live Game</title>
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
                    Oynayan Komandalar:
                    <asp:TextBox ID="txtPair" runat="server" Width="155px"></asp:TextBox></td>

            </tr>
            <tr>
                <td colspan="2" style="height: 14px; text-align: right;">
                    Tarix:
                    <asp:TextBox ID="txtDate" runat="server" ReadOnly="True" Width="155px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: right">
                    Hesab:<asp:TextBox ID="txtScore" runat="server" Height="17px" Width="155px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: right">
                    Vəziyyət:<select id="durum" style="width: 159px" runat="server">
                        <option selected="selected" value="Davam Edir">Davam edir</option>
                        <option value="Bitdi">Bitdi</option>
                        <option></option>
                    </select></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAddLiveNow" runat="server" Font-Bold="True" Height="46px"
                        Text="Xəbər Əlavə Et!" Width="114px" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
