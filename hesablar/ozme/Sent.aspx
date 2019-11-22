<%@ page language="VB" autoeventwireup="false" inherits="hesablar_ozme_Sent, App_Web_sent.aspx.77a40eae" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Şəxsi Mesajlarım - Göndərilənlər</title>
</head>
<body style="background-color:Silver">
    <form id="form1" runat="server">
    <div>
        <asp:LoginName ID="LoginName1" runat="server" Font-Bold="True" FormatString="Xoş Gəlmisiniz, {0}"
            Style="font-size: 10pt; font-family: Tahoma" />
        &nbsp;<asp:LoginStatus ID="LoginStatus1" runat="server" Font-Bold="True" LoginText="Giriş"
            LogoutAction="Redirect" LogoutPageUrl="../../Default.aspx" LogoutText="Çıxış"
            Style="font-size: 10pt; font-family: Tahoma" />
        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="../Default.aspx"
            Style="font-size: 10pt; font-family: Tahoma">İstifadəçi Paneli</asp:LinkButton>
        -
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" PostBackUrl="../../Default.aspx"
            Style="font-size: 10pt; font-family: Tahoma">Baş Səhifə</asp:LinkButton><br />
        <table style="vertical-align: middle; width: 1000px; text-align: center">
            <tr>
                <td style="width: 555px">
                    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="xml465x70" Height="70px"
                        Width="465px" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:XmlDataSource ID="xml465x70" runat="server" DataFile="~/sekiller/Ads.xml"></asp:XmlDataSource>
        &nbsp;&nbsp;<br />
        <asp:SqlDataSource ID="sqlPM" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>">
        </asp:SqlDataSource>
        &nbsp;&nbsp;<br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" PostBackUrl="Default.aspx"
            Text="Gələnlər" Width="96px" />&nbsp;<asp:Button ID="Button2" runat="server" Font-Bold="True"
                PostBackUrl="../Default.aspx" Text="Mesaj Yaz" /><br />
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="sqlPM"
            ForeColor="#333333" Width="777px" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <HeaderTemplate>
                <table style="font-weight: bold; font-size: 10pt; width: 743px; color: white; font-family: Tahoma">
                    <tr>
                        <td colspan="4" style="border-top-width: 1px; border-left-width: 1px; border-left-color: black;
                            border-bottom-width: 1px; border-bottom-color: black; vertical-align: middle;
                            border-top-color: black; text-align: center; border-right-width: 1px; border-right-color: black">
                            Göndərilənlər</td>
                    </tr>
                    <tr>
                        <td style="width: 9723px">
                            Kimə</td>
                        <td style="width: 44382px; vertical-align: middle; text-align: center;">
                            Mövzu</td>
                        <td style="width: 4476px; vertical-align: middle; text-align: center;">
                            Tarix</td>
                        <td style="width: 2282px; vertical-align: middle; text-align: center;">
                            Əməliyyat</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pto") %>' Width="109px"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server"
                    Text='<%# Eval("Ptopic") %>' ToolTip='<%# Eval("Pfull") %>' Width="403px"></asp:LinkButton>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pdate") %>' Width="189px"></asp:Label>&nbsp;<asp:Button
                    ID="btnDel" runat="server" Text="Sil" />
            </ItemTemplate>
        <FooterTemplate>
            <table style="font-size: 10pt; width: 700px; color: white; font-family: Tahoma">
                <tr>
                    <td style="height: 18px">
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="White"
                            PostBackUrl="../../Default.aspx">Baş Səhifə</asp:LinkButton>
                        -
                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" ForeColor="White"
                            PostBackUrl="~/hesablar/ozme/Default.aspx">Mesaj Göndər</asp:LinkButton>
                        -
                        <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="White" PostBackUrl="~/hesablar/Default.aspx">İstifadəçi Paneli</asp:LinkButton>
                        -
                        <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="White" PostBackUrl="~/Pages/Privacy-Policy.aspx">Gizlilik Siyasəti</asp:LinkButton>
                        -
                        <asp:LinkButton ID="LinkButton8" runat="server" ForeColor="White" PostBackUrl="~/Pages/TOS.aspx">İstifadə Şərtləri</asp:LinkButton></td>
                </tr>
            </table>
        </FooterTemplate>
        </asp:DataList>
    </form>
</body>
</html>
