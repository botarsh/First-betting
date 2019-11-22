        <%@ page language="VB" autoeventwireup="false" inherits="hesablar_Bet_Now, App_Web_bet-now.aspx.562caacc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İstifadəçi Paneli::Bəhs Forması</title>
</head>
<body style="background:silver">
    <form id="form1" runat="server">
    <div>
        
        <asp:Panel ID="pnlInfo" runat="server" Height="197px" Style="border-right: yellow 1px solid;
            border-top: yellow 1px solid; font-size: 11pt; border-left: yellow 1px solid;
            border-bottom: yellow 1px solid; font-family: Tahoma" Width="222px">
            <asp:Label ID="lblu" runat="server" Text="Xoş Gəlmisiniz," Width="223px" EnableViewState="False"></asp:Label><br />
            <br />
            <asp:Label ID="bal" runat="server" Text="Sizin Balansınız" Width="222px" EnableViewState="False"></asp:Label><br />
            <br />
            <asp:Label ID="risk" runat="server" Text="Maksimum Risk Məbləği:" Width="224px" EnableViewState="False"></asp:Label><br />
            <br />
            <asp:LinkButton ID="lnkPanel" runat="server" PostBackUrl="Default.aspx">Istifadəçi Paneli</asp:LinkButton><br />
            <br />
            <asp:LinkButton ID="Mainpa" runat="server" PostBackUrl="../Default.aspx">Baş Səhifə</asp:LinkButton><br />
            <br />
            <asp:LoginStatus ID="ls" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Small"
                Height="19px" LoginText="Giriş" LogoutAction="RedirectToLoginPage" LogoutPageUrl="~/Default.aspx"
                LogoutText="Çıxış" Width="54px" />
        </asp:Panel>
        
        <br />
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="xmlBetNowAds" Height="70px"
            Style="left: 321px; position: absolute; top: 16px" Width="460px" />
        <asp:Panel ID="Datalar" runat="server" Height="50px" Style="border-right: red thin solid;
            border-top: red thin solid; left: 27px; border-left: red thin solid; border-bottom: red thin solid;
            position: absolute; top: 471px" Width="125px" Visible="False">
        <asp:XmlDataSource ID="xmlBetNowAds" runat="server" DataFile="~/sekiller/Ads.xml"></asp:XmlDataSource>
            <asp:TextBox ID="bfor" runat="server" Visible="False" Width="47px"></asp:TextBox></asp:Panel>
        &nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="8px" Style="border-top-width: 1px;
            border-left-width: 1px; border-left-color: yellow; left: 309px; border-bottom-width: 1px;
            border-bottom-color: yellow; border-top-color: yellow; position: absolute; top: 242px;
            border-right-width: 1px; border-right-color: yellow" Width="460px">
            <table style="border-right: yellow 1px solid; border-top: yellow 1px solid; font-size: 10pt;
                border-left: yellow 1px solid; width: 531px; border-bottom: yellow 1px solid;
                font-family: Tahoma; position: static">
                <tr>
                    <td>
                        <strong>Komanda</strong></td>
                    <td style="font-size: 10pt; vertical-align: middle; font-family: Tahoma; text-align: center">
                        <strong>G1</strong></td>
                    <td style="vertical-align: middle; text-align: center">
                        <strong>Gx</strong></td>
                    <td style="vertical-align: middle; text-align: center">
                        <strong>G2</strong></td>
                    <td style="vertical-align: middle; text-align: center">
                        <strong>Miqdar</strong></td>
                    <td>
                        <strong style="vertical-align: middle; text-align: center">&nbsp; &nbsp;&nbsp; Əməliyyat</strong></td>
                </tr>
                <tr>
                    <td style="height: 26px">
                        <asp:TextBox ID="kom" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td style="width: 36px; height: 26px">
                        <asp:TextBox ID="g1" runat="server" ReadOnly="True" Style="vertical-align: middle;
                            text-align: center" Width="50px"></asp:TextBox></td>
                    <td style="height: 26px">
                        <asp:TextBox ID="gx" runat="server" ReadOnly="True" Style="vertical-align: middle;
                            text-align: center" Width="50px"></asp:TextBox></td>
                    <td style="height: 26px">
                        <asp:TextBox ID="g2" runat="server" ReadOnly="True" Style="vertical-align: middle;
                            text-align: center" Width="50px"></asp:TextBox></td>
                    <td style="height: 26px">
                        <asp:TextBox ID="miq" runat="server" MaxLength="2" Style="vertical-align: middle;
                            text-align: center" Width="58px"></asp:TextBox></td>
                    <td style="height: 26px">
                        <asp:Button ID="btnCal" runat="server" Font-Bold="True" Text="Hesabla!" Width="104px" /></td>
                </tr>
            </table>
            <asp:Label ID="xeta" runat="server" Style="font-weight: bold; font-size: 11pt; color: red;
                font-family: Tahoma" Visible="False" Width="524px"></asp:Label></asp:Panel>
        <asp:Panel ID="Melumat" runat="server" Height="128px" Style="border-right: yellow 1px solid;
            border-top: yellow 1px solid; font-size: 10pt; left: 316px; border-left: yellow 1px solid;
            border-bottom: yellow 1px solid; font-family: Tahoma; position: absolute; top: 315px;
            text-align: center" Visible="False" Width="526px">
            <asp:Label ID="gelir" runat="server" EnableViewState="False" Font-Bold="True" Text="Sizin təxmini gəliriniz:"
                Width="145px"></asp:Label>
            <asp:TextBox ID="tgel" runat="server" ReadOnly="True" Width="65px"></asp:TextBox><br />
            <br />
            <asp:Label ID="ssbal" runat="server" EnableViewState="False" Font-Bold="True" Text="Stavkadan sonra balansınız:"
                Width="183px"></asp:Label>
            <asp:TextBox ID="ssonra" runat="server" Width="65px" ReadOnly="True"></asp:TextBox><br />
            <br />
            <asp:Label ID="usbal" runat="server" EnableViewState="False" Font-Bold="True" Text="Uduşdan sonrakı balansınız:"
                Width="188px"></asp:Label>
            <asp:TextBox ID="usonra" runat="server" Width="65px" ReadOnly="True"></asp:TextBox><br />
            <br />
            <br />
            <asp:Button ID="tesdiqle" runat="server" Font-Bold="True" Height="29px" Text="Təsdiqlə"
                Width="100px" /></asp:Panel>
    
    </div>
    </form>
</body>
</html>
