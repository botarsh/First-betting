<%@ page language="VB" autoeventwireup="false" inherits="hesablar_pubms_Default, App_Web_default.aspx.167569cf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İctimai Mesajlarlarım</title>
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
        &nbsp;&nbsp;&nbsp;<br />
        <asp:Button ID="Button2" runat="server" Font-Bold="True"
                PostBackUrl="../Default.aspx" Text="Mesaj Yaz" Width="99px" /><br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="sqlPM"
            ForeColor="#333333" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <HeaderTemplate>
                <table style="font-weight: bold; font-size: 10pt; width: 654px; color: white; font-family: Tahoma">
                    <tr>
                        <td colspan="3" style="vertical-align: middle; text-align: center">
                            İctimai Yazılarım</td>
                    </tr>
                    <tr>
                        <td style="width: 410px">
                            Mövzu</td>
                        <td style="width: 170px">
                            Tarix</td>
                        <td style="width: 70px">
                            Əməliyyat</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server"
                    Text='<%# Eval("Unheader") %>' ToolTip='<%# Eval("Unfull") %>' Width="400px" style="font-size: 10pt; font-family: Tahoma"></asp:LinkButton>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Undate") %>' Width="170px" style="font-size: 10pt; font-family: Tahoma"></asp:Label>&nbsp;<asp:Button
                    ID="btnEdit" runat="server" Font-Bold="True" Text="Düzəliş!"
                    Width="65px" style="font-size: 10pt; font-family: Tahoma" OnClick="btnEdit_Click" PostBackUrl="EditPublicMessage.aspx" />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="sqlPM" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>">
        </asp:SqlDataSource>
        &nbsp;
        <asp:Panel ID="PanelIM" runat="server" Height="251px" Style="font-size: 10pt;
            left: 115px; font-family: Tahoma; position: absolute; top: 157px; background-color: silver"
            Visible="False" Width="345px">
            <asp:Label ID="Label2" runat="server" Height="19px"
                    Text="Mövzu: "></asp:Label><asp:TextBox ID="movzu" runat="server" MaxLength="49"
                        Width="255px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="Red"
                Width="1px" Height="18px">X</asp:LinkButton><br />
            Mətn:<asp:TextBox ID="mell" runat="server" Visible="False" Width="90px"></asp:TextBox>
            <asp:TextBox ID="tarix" runat="server" Visible="False" Width="82px"></asp:TextBox><br />
            <asp:TextBox ID="metn" runat="server" Height="148px" MaxLength="500" TextMode="MultiLine"
                Width="299px"></asp:TextBox>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Button ID="pmSend" runat="server" Font-Bold="True" Text="Göndər" /></asp:Panel>
    </form>
</body>
</html>
