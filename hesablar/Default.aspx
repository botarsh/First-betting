<%@ page language="VB" autoeventwireup="false" inherits="hesablar_Default, App_Web_default.aspx.562caacc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İstifadəçi Paneli::Əsas</title>
</head>
<body style="background-color:Silver">
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;<asp:LoginName ID="LoginName1" runat="server" FormatString="Salam, {0}" style="font-size: 11pt; font-family: Tahoma" />
        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/./Default.aspx" style="font-size: 11pt; font-family: Tahoma" LoginText="Giriş" LogoutText="Çıxış" Font-Bold="True" />
        &nbsp;-
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" PostBackUrl="../Default.aspx"
            Style="font-size: 11pt; font-family: Tahoma">Baş Səhifə</asp:LinkButton>&nbsp;
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="70px" Style="vertical-align: middle;
            text-align: center" Width="1000px">
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="xmlUser465x60Ads" Height="60px"
                Width="465px" />
        </asp:Panel>
        &nbsp;<br />
        <table style="border-right: black 1px solid; border-top: black 1px solid; font-size: 10pt;
            vertical-align: middle; border-left: black 1px solid; width: 206px; border-bottom: black 1px solid;
            font-family: Tahoma; height: 181px; text-align: center">
            <tr>
                <td style="color: white; background-color: navy">
                    <strong>Şəxsi Mesajlar</strong></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="lsendMesaj" runat="server" Font-Bold="False">Mesaj Göndər</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="lGelenlerMsj" runat="server" Font-Bold="False" PostBackUrl="~/hesablar/ozme/Default.aspx">Gələnlər</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="lGonderilenMesajlar" runat="server" Font-Bold="False" PostBackUrl="~/hesablar/ozme/Sent.aspx">Göndərilənlər</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; color: white; text-align: left">
                    .</td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                </td>
            </tr>
        </table>
        <table style="border-right: black 1px solid; border-top: black 1px solid; font-size: 10pt;
            left: 218px; vertical-align: middle; border-left: black 1px solid; width: 206px;
            border-bottom: black 1px solid; font-family: Tahoma; position: absolute; top: 123px;
            height: 181px; text-align: center">
            <tr>
                <td style="color: white; background-color: navy">
                    <strong>
                    İctimai Mesajlar</strong></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="LPmesajSend" runat="server" Font-Bold="False">Yazı Yaz</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="LSentPubMesajlarim" runat="server" Font-Bold="False" PostBackUrl="~/hesablar/pubms/Default.aspx">Göndərdiklərim</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="EditPubMesajlarimi" runat="server" Font-Bold="False" PostBackUrl="~/hesablar/pubms/EditPublicMessage.aspx">Mesajlara Düzəliş</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; color: white; text-align: left">
                    .</td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                </td>
            </tr>
        </table>
        <table style="border-right: black 1px solid; border-top: black 1px solid; font-size: 10pt;
            left: 426px; vertical-align: middle; border-left: black 1px solid; width: 206px;
            border-bottom: black 1px solid; font-family: Tahoma; position: absolute; top: 123px;
            height: 181px; text-align: center">
            <tr>
                <td style="color: white; background-color: navy">
                    <strong>
                    Balans Haqqında</strong></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:Label ID="lebal" runat="server" Font-Bold="True" Text="Sizin Balansınız:"></asp:Label></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="laddBal" runat="server">Balansın Artırılması</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="ldelBal" runat="server">Pul Çıxart</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                    <asp:LinkButton ID="lAccTarixi" runat="server">Hesab Tarixçəsi</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="vertical-align: middle; text-align: left">
                </td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="PanelSendMessage" runat="server" Height="301px" Style="font-size: 10pt;
            left: 220px; font-family: Tahoma; position: absolute; top: 121px; background-color: silver; z-index: 6; border-top-width: 1px; border-left-width: 1px; border-left-color: black; border-bottom-width: 1px; border-bottom-color: black; border-top-color: black; border-right-width: 1px; border-right-color: black;"
            Visible="False" Width="335px">
            <asp:Label ID="Label1" runat="server" Height="19px" Text="Kimə:"></asp:Label>
            <asp:TextBox ID="kime" runat="server" MaxLength="20" Width="262px"></asp:TextBox>
            <asp:Button ID="bagla" runat="server" BackColor="Red" BorderColor="White" Font-Bold="True"
                Text="X" Width="25px" /><br />
            <br />
            <asp:Label ID="Label2" runat="server" Height="19px" Text="Mövzu: "></asp:Label><asp:TextBox
                ID="movzu" runat="server" MaxLength="49" Width="258px"></asp:TextBox><br />
            <br />
            Mətn:<asp:TextBox ID="kimden" runat="server" Width="90px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="tarix" runat="server" Width="82px" Visible="False"></asp:TextBox><br />
            <asp:TextBox ID="metn" runat="server" Height="148px" MaxLength="500" TextMode="MultiLine"
                Width="299px"></asp:TextBox><br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="pmSend" runat="server" Font-Bold="True" Text="Göndər" /></asp:Panel>
        <asp:Panel ID="pnlMel" runat="server" Height="79px" Style="font-size: 10pt; z-index: 3;
            left: 293px; font-family: Tahoma; position: absolute; top: 12px; background-color: silver"
            Visible="False" Width="240px">
            Sizin əməliyyat qəbul olunmuşdur. Balansınıza <strong>Administrator</strong> tərəfindən
            yoxlanıldıqdan sonra müvafiq düzəlişlər
            <br />
            ediləcəkdir.<asp:LinkButton ID="hlCon" runat="server" Font-Bold="True" ForeColor="Black"
                Width="151px">Davam Edin...</asp:LinkButton></asp:Panel>
        <asp:Panel ID="pnlAddBlns" runat="server" Height="17px" Style="font-size: 10pt; z-index: 10;
            left: 294px; font-family: Tahoma; position: absolute; top: 11px; background-color: silver"
            Visible="False" Width="241px">
            Məbləğ:<asp:TextBox ID="tmeb" runat="server" Height="14px" MaxLength="2" Style="font-size: 8pt"></asp:TextBox>
            <asp:Button ID="btnAddBalance" runat="server" Height="21px" Style="font-size: 8pt"
                Text="Əlavə Et" /></asp:Panel>
        <asp:Panel ID="PanelYazi" runat="server" Height="262px" Style="font-size: 10pt;
            left: 427px; font-family: Tahoma; position: absolute; top: 120px; background-color: silver; z-index: 5; border-top-width: 1px; border-left-width: 1px; border-left-color: black; border-bottom-width: 1px; border-bottom-color: black; border-top-color: black; border-right-width: 1px; border-right-color: black;"
            Visible="False" Width="307px">
                <asp:Label ID="Label4" runat="server" Height="19px" Text="Mövzu: "></asp:Label><asp:TextBox
                    ID="pubhed" runat="server" MaxLength="49" Width="229px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="White" Font-Bold="True"
                Text="X" Width="25px" /><br />
                Mətn:<asp:TextBox ID="pubAuth" runat="server" Visible="False" Width="90px"></asp:TextBox>
                <asp:TextBox ID="pubtar" runat="server" Visible="False" Width="82px"></asp:TextBox><br />
                <asp:TextBox ID="pubf" runat="server" Height="148px" MaxLength="500" TextMode="MultiLine"
                    Width="299px"></asp:TextBox><br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Göndər" /></asp:Panel>
        <table id="TABLE1" runat="server" style="border-right: black 1px solid; border-top: black 1px solid;
            font-size: 10pt; vertical-align: middle; border-left: black 1px solid; width: 206px;
            border-bottom: black 1px solid; font-family: Tahoma; height: 260px; text-align: center">
            <tr runat="server">
                <td style="color: white; background-color: navy" runat="server">
                    <strong>Stavkalar Bölməsi</strong></td>
            </tr>
            <tr runat="server">
                <td style="vertical-align: middle; text-align: left" runat="server">
                    <asp:LinkButton ID="lsele" runat="server" Font-Bold="False">Stavka Elə</asp:LinkButton></td>
            </tr>
            <tr runat="server">
                <td style="vertical-align: middle; text-align: left" runat="server">
                    <asp:LinkButton ID="l1ciqs" runat="server" Font-Bold="False">Birinci Qol Stavkası</asp:LinkButton></td>
            </tr>
            <tr runat="server">
                <td style="vertical-align: middle; text-align: left" runat="server">
                    <asp:LinkButton ID="uclustavka" runat="server" Font-Bold="False">3-lü Stavka</asp:LinkButton></td>
            </tr>
            <tr runat="server">
                <td style="vertical-align: middle; text-align: left" runat="server">
                    <asp:LinkButton ID="birks" runat="server" Font-Bold="False">Birinci Kart Stavkası</asp:LinkButton></td>
            </tr>
            <tr runat="server">
                <td style="vertical-align: middle; text-align: left" runat="server">
                    <asp:LinkButton ID="ikixiki" runat="server" Font-Bold="False">İkiqat Risk - İkiqat Gəlir</asp:LinkButton></td>
            </tr>
            <tr runat="server">
                <td style="vertical-align: middle; text-align: left" runat="server">
                    <asp:LinkButton ID="cstav" runat="server" Font-Bold="False">Cari Stavkalarım</asp:LinkButton></td>
            </tr>
            <tr runat="server">
                <td style="vertical-align: middle; text-align: left" runat="server">
                    <asp:LinkButton ID="bistav" runat="server" Font-Bold="False">Bitmiş Stavkalarım</asp:LinkButton></td>
            </tr>
        </table>
        <asp:Panel ID="Warning" runat="server" Height="179px" Style="font-size: 10pt; z-index: 3;
            left: 427px; color: lime; font-family: Tahoma; position: absolute; top: 125px;
            background-color: green" Visible="False" Width="207px">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Sizin balansınızdakı pul virtualdır. Siz balansınızdan
            pul çıxararkən balansınız göstərdiyiniz məbləğdə azalacaqdır və <strong>siz real olaraq
                heç bir məbləğdə pul almayacaqsınız.</strong> Bütün bunlar hamısı proqramın
            reala daha da çox oxşaması üçündür. Qəbul edirsinizsə
            <asp:LinkButton ID="lnkdvm" runat="server" Font-Bold="True">Davam Edin...</asp:LinkButton></asp:Panel>
        <asp:Panel ID="MinBlns" runat="server" Height="19px" Style="font-size: 10pt; left: 539px;
            font-family: Tahoma; position: absolute; top: 10px" Visible="False" Width="204px">
            Məbləğ:<asp:TextBox ID="mmeb" runat="server" Width="88px"></asp:TextBox>
            <asp:Button ID="btnMin" runat="server" Font-Bold="True" Height="22px" Style="font-size: 8pt"
                Text="Çıxarış" /></asp:Panel>
        <br />
        &nbsp;&nbsp;
        <asp:AdRotator ID="admantor" runat="server" DataSourceID="xml375x180Ads" Height="179px"
            Style="border-right: black 1px solid; border-top: black 1px solid; left: 634px;
            border-left: black 1px solid; border-bottom: black 1px solid; position: absolute;
            top: 123px" Width="375px" />
        &nbsp;<br />
        <br />
        <br />
        <br />
        &nbsp;<asp:XmlDataSource ID="xmlUser465x60Ads" runat="server" DataFile="~/sekiller/UserAds.xml">
        </asp:XmlDataSource>
        <asp:XmlDataSource ID="xml375x180Ads" runat="server" DataFile="~/sekiller/375x180.xml">
        </asp:XmlDataSource>
    </div>
    </form>
</body>
</html>
