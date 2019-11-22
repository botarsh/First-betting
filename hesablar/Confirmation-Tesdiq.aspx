<%@ page language="VB" autoeventwireup="false" inherits="hesablar_Confirmation_Tesdiq, App_Web_confirmation-tesdiq.aspx.562caacc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İstifadəçi Paneli::Sizin əməliyyatınız təsdiqləndi</title>
</head>
<body style="background-color:Silver">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Style="font-weight: bold; font-size: 10pt;
            color: red; font-family: Tahoma" Text='Sizin əməliyyatınız təsdiqlənmişdir. Zəhmət olmasa "Davam Edin" butonuna basın...'
            Width="548px"></asp:Label><br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Davam Edin" Width="209px" /><br />
        <br />
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="xml125x125" Height="125px"
            Width="125px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:XmlDataSource ID="xml125x125" runat="server" DataFile="~/sekiller/125x125.xml">
        </asp:XmlDataSource>
        &nbsp;</div>
    </form>
</body>
</html>
