<%@ page language="VB" autoeventwireup="false" inherits="aga_FutbolXeberleri_fNews, App_Web_add-online-betting.aspx.3ac6f2b7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Administration - Add Online Betting</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="vertical-align: middle; width: 480px; height: 337px; text-align: center; font-size: 10pt; font-family: Tahoma;">
            <tr>
                <td colspan="2" style="font-size: 11pt; color: white; font-family: Tahoma; height: 7px;
                    background-color: #000099">
                    <strong>Bəhs Komandaları</strong></td>
            </tr>
            <tr>
                <td style="width: 597px; height: 24px; text-align: center;">
                    Oynayan Komandalar:<asp:TextBox ID="txtBetPair" runat="server" TabIndex="1" Width="179px"></asp:TextBox>
                    Status:<asp:TextBox ID="st" runat="server" ReadOnly="True" Style="text-align: center"
                        Width="90px">Ok</asp:TextBox></td>

            </tr>
            <tr>
                <td colspan="2" style="height: 14px; text-align: right;">
                    Oyun Başlayır(Saat):<asp:TextBox ID="txtbasa" runat="server" TabIndex="2" Width="56px"></asp:TextBox>
                    Oyun Başlayır(Tarix):<asp:TextBox ID="txtbata" runat="server" TabIndex="3"
                        Width="55px"></asp:TextBox>
                    Tarix:<asp:TextBox ID="tarix" runat="server" ReadOnly="True" TabIndex="4" Width="55px"></asp:TextBox>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 597px;">
                    G1:<asp:TextBox ID="g1" runat="server" TabIndex="5" Width="120px"></asp:TextBox>
                    G2:<asp:TextBox ID="g2" runat="server" TabIndex="6" Width="120px"></asp:TextBox>G3:
                    <asp:TextBox ID="g3" runat="server" TabIndex="7" Width="120px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 597px">
                    <asp:Button ID="btnAddBetGame" runat="server" Font-Bold="True" Height="81px" TabIndex="8"
                        Text="Əlavə et" Width="218px" /></td>
            </tr>
        </table>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
            Font-Size="8pt" ForeColor="#003399" Height="200px" Style="left: 494px; position: absolute;
            top: 103px" Width="220px">
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <WeekendDayStyle BackColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        </asp:Calendar>
    
    </div>
    </form>
</body>
</html>
