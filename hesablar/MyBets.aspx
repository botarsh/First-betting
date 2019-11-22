<%@ page language="VB" autoeventwireup="false" inherits="hesablar_MyBets, App_Web_mybets.aspx.562caacc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İstifadəçi Paneli::Stavkalarım</title>
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
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" PostBackUrl="../Default.aspx"
            Style="font-size: 10pt; font-family: Tahoma">Baş Səhifə</asp:LinkButton><br />
        <table style="vertical-align: middle; width: 1000px; text-align: center">
            <tr>
                <td style="width: 555px; vertical-align: middle; text-align: center;">
                    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="xml465x70" Height="70px"
                        Width="465px" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:XmlDataSource ID="xml465x70" runat="server" DataFile="~/sekiller/Ads.xml"></asp:XmlDataSource><table style="border-right: yellow 1px solid; border-top: yellow 1px solid; font-size: 10pt;
            vertical-align: middle; border-left: yellow 1px solid; width: 1080px; border-bottom: yellow 1px solid;
            font-family: Tahoma; text-align: left; font-weight: bold; color: white; background-color: #5d7b9d;">
            <tr>
                <td style="height: 21px">
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="../Pages/Presentation.aspx">Təqdimat</asp:HyperLink></td>
                <td style="height: 21px">
                    <asp:HyperLink ID="lnkFixture" runat="server" ForeColor="White" NavigateUrl="../Pages/Fixture.aspx">Fikstura</asp:HyperLink></td>
                <td style="height: 21px; width: 134px;">
                    <asp:HyperLink ID="lnkYardim" runat="server" ForeColor="White" NavigateUrl="../Pages/Komek.aspx">Kömək</asp:HyperLink></td>
                <td style="height: 21px; width: 136px;">
                    <asp:HyperLink ID="lnkQaydalar" runat="server" ForeColor="White" NavigateUrl="../Pages/Qaydalar.aspx">Qaydalar</asp:HyperLink></td>
                <td style="height: 21px; width: 151px;">
                    <asp:HyperLink ID="lnkAbout" runat="server" ForeColor="White" NavigateUrl="../Pages/About-Us.aspx">Şirkət Haqqında</asp:HyperLink>
                </td>
                <td style="width: 98px; height: 21px">
                    <asp:HyperLink ID="lnkReklam" runat="server" ForeColor="White" NavigateUrl="../Pages/Media-Kit.aspx">Reklam</asp:HyperLink></td>
                <td style="height: 21px">
                    <asp:HyperLink ID="lnkContact" runat="server" ForeColor="White" NavigateUrl="../Pages/Elaqe.aspx">Əlaqə</asp:HyperLink></td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Bid" DataSourceID="sqlPM"
            ForeColor="#333333" GridLines="None" Style="font-size: 10pt; font-family: Tahoma"
            Width="761px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField SelectText="Se&#231;in" ShowSelectButton="True" />
                <asp:BoundField DataField="Bpair" HeaderText="C&#252;tl&#252;k" SortExpression="Bpair">
                    <HeaderStyle HorizontalAlign="Left" Width="400px" />
                </asp:BoundField>
                <asp:BoundField DataField="Bamount" HeaderText="Bəhs Məbləği" SortExpression="Bamount">
                    <HeaderStyle HorizontalAlign="Center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Bincome" HeaderText="Mənfi/M&#252;sbət" SortExpression="Bincome">
                    <HeaderStyle HorizontalAlign="Center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Bdate" HeaderText="Bəhs Tarixi" SortExpression="Bdate">
                    <HeaderStyle HorizontalAlign="Center" Width="200px" />
                </asp:BoundField>
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqlPM" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>" SelectCommand="SELECT [Bid], [Bpair], [Bamount], [Bincome], [Bdate] FROM [UserBets] WHERE ([Baccount] = @Baccount) ORDER BY [Bid] DESC">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="pXmOlTUvaXPlINsSiskNsJWPoiOyeEYr" Name="Baccount"
                    QueryStringField="Uid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="border-right: yellow 1px solid; border-top: yellow 1px solid; font-size: 10pt;
            border-left: yellow 1px solid; width: 1080px; border-bottom: yellow 1px solid;
            font-family: Tahoma; font-weight: bold; vertical-align: middle; color: white; background-color: #5d7b9d; text-align: center;">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="../Pages/About-Us.aspx">Şirkət Haqqında</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="../Pages/Qaydalar.aspx">Qaydalar</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="../Pages/Komek.aspx">Kömək</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="White" NavigateUrl="../Pages/Komek.aspx">Media Çantası</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" NavigateUrl="../Pages/Elaqe.aspx">Əlaqə Saxla</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" NavigateUrl="../Pages/TOS.aspx">Xidmətin Şərtləri</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" NavigateUrl="../Pages/Privacy-Policy.aspx">Gizlilik Siyasəti</asp:HyperLink></td>
            </tr>
        </table>  
    </form>
</body>
</html>
