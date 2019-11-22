<%@ page language="VB" autoeventwireup="false" inherits="aga_FutbolXeberleri_fNews, App_Web_addfootballnews.aspx.f0bea8ad" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Add Football News</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="vertical-align: middle; width: 619px; height: 309px; text-align: center">
            <tr>
                <td colspan="2" style="font-size: 11pt; color: white; font-family: Tahoma; height: 30px;
                    background-color: #000099">
                    <strong>Xəbərlər</strong></td>
            </tr>
            <tr>
                <td style="width: 599px">
                    <asp:TextBox ID="txtHeader" runat="server" Width="451px"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtFull" runat="server" Height="208px" TextMode="MultiLine" Width="611px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 26px">
                    <asp:Button ID="btnAddFootballNews" runat="server" Font-Bold="True" Height="46px"
                        Text="Xəbər Əlavə Et!" Width="114px" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
