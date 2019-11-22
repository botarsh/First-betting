<%@ page language="VB" autoeventwireup="false" inherits="upn, App_Web_upn.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İstifadəçi mesajları - İctimai Zona</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblh" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Small"
            Text="Header" Width="500px"></asp:Label><br />
        <br />
        <asp:Label ID="lblf" runat="server" Font-Names="Tahoma" Font-Size="Small" Height="150px"
            Text="Full" Width="500px"></asp:Label><br />
        <br />
        <asp:Label ID="lbld" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Small"
            Text="Date" Width="219px"></asp:Label>
        <asp:Label ID="lblm" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Small"
            Text="Müəllif" Width="278px"></asp:Label><br />
        <br />
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="70px"
            Width="465px" />
        <br />
        <br />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/sekiller/Ads.xml">
        </asp:XmlDataSource>
    
    </div>
        <br />
        <table style="width: 500px">
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="vertical-align: middle; position: absolute; text-align: center">
                </td>
                <td style="text-align: center">
                    <asp:Button ID="btnBack" runat="server" Font-Bold="True" PostBackUrl="~/Default.aspx"
                        Text="Geri Qayıdın" Width="187px" /></td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
