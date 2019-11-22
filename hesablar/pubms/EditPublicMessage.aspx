<%@ page language="VB" autoeventwireup="false" inherits="hesablar_pubms_EditPublicMessage, App_Web_editpublicmessage.aspx.167569cf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İctimai Mesajlarım - Düzəliş</title>
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
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
       <asp:DataList ID="DataList1" runat="server" Style="border-right: black 1px solid;
           border-top: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid"
           Width="766px" DataSourceID="sqlPM">
           <ItemTemplate>
               <asp:Label ID="idx" runat="server" Style="font-size: 10pt; font-family: Tahoma"
                   Text='<%# Eval("Unid") %>' Width="22px"></asp:Label>
               <asp:Label ID="Label3" runat="server" Style="font-size: 10pt; font-family: Tahoma"
                   Text='<%# Eval("Undate") %>' Width="170px"></asp:Label>
               <asp:Label ID="hedmes" runat="server" Style="font-size: 10pt; font-family: Tahoma"
                   Text='<%# Eval("Unheader") %>' Width="381px"></asp:Label>
               <asp:Button ID="btnDuz" runat="server" Font-Bold="True" Text="Düzəlt" Width="60px" OnClick="btnDuz_Click" PostBackUrl='<%# "EditPublicMessage.aspx?ids=" & Eval("Unid") %>' />
               -&nbsp;<asp:Button ID="btnSil" runat="server" Font-Bold="True" PostBackUrl='<%# "Kill.aspx?bip=" & Eval("Unid") %>'
                   Text="Sil" Width="60px" />&nbsp;
           </ItemTemplate>
           <HeaderTemplate>
               <table style="font-weight: bold; font-size: 10pt; width: 708px; color: white; font-family: Tahoma;
                   background-color: teal">
                   <tr>
                       <td style="width: 170px">
                            Tarix</td>
                       <td style="width: 400px">
                            Mövzu</td>
                       <td style="width: 120px">
                            Əməliyyat</td>
                   </tr>
               </table>
           </HeaderTemplate>
       </asp:DataList>
        <asp:SqlDataSource ID="sqlPM" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>">
        </asp:SqlDataSource>
       <br />
       <asp:Panel ID="EditPaneli" runat="server" Height="248px" Style="border-right: black 1px solid;
           border-top: black 1px solid; font-weight: bold; font-size: 10pt; border-left: black 1px solid;
           border-bottom: black 1px solid; font-family: Tahoma" Visible="False" Width="362px">
           Mövzu:<asp:TextBox ID="ehead" runat="server" Width="281px"></asp:TextBox>
           &nbsp;<asp:LinkButton ID="cvds" runat="server" ForeColor="Red">X</asp:LinkButton><br />
           <br />
           Mətn:<asp:TextBox ID="eid" runat="server" Visible="False" Width="48px"></asp:TextBox><br />
           <asp:TextBox ID="efull" runat="server" Height="141px" TextMode="MultiLine" Width="328px"></asp:TextBox><br />
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
           <br />
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
           <asp:Button ID="Duzel" runat="server" Font-Bold="True" Text="Düzəlt" /><br />
       </asp:Panel>
    </form>
</body>
</html>
