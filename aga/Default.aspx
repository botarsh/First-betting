<%@ page language="VB" autoeventwireup="false" inherits="aga_Default, App_Web_default.aspx.2869a9ac" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Administration:: Main</title>
</head>
<body>
    <form id="form1" runat="server">
    <div><div id="s" runat="server" />
        <br />
        <table style="border-right: black 1px solid; border-top: black 1px solid; font-size: 10pt;
            vertical-align: middle; border-left: black 1px solid; width: 740px; border-bottom: black 1px solid;
            font-family: Tahoma; height: 125px; text-align: center">
            <tr>
                <td style="color: white; background-color: navy">
                    <strong>Futbol Xəbərləri Bölməsi</strong></td>
                <td style="color: white; background-color: navy">
                    <strong>Canlı Oyunlar Bölməsi</strong></td>
                <td style="color: white; background-color: navy">
                    <strong>Betting Bölməsi</strong></td>
                <td style="color: white; background-color: navy">
                    <strong>Sayt Xəbərləri Bölməsi</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="addfnews" runat="server" PostBackUrl="~/aga/FutbolXeberleri/AddFootBallNews.aspx">Add Football News</asp:LinkButton></td>
                <td>
                    <asp:LinkButton ID="aln" runat="server" PostBackUrl="~/aga/LiveNow/AddFeaturedGame.aspx">Seçilmiş Oyun Əlavə Et</asp:LinkButton></td>
                <td>
                    <asp:LinkButton ID="addb" runat="server" PostBackUrl="~/aga/OnlineBetting/Add-Online-Betting.aspx">Betting Əlavə Et</asp:LinkButton></td>
                <td>
                    <asp:LinkButton ID="asn" runat="server" PostBackUrl="~/aga/SaytXeberleri/SiteNews.aspx">Add Site News</asp:LinkButton></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="efn" runat="server" PostBackUrl="~/aga/FutbolXeberleri/UpdateFootBallNews.aspx">Edit Football News</asp:LinkButton></td>
                <td>
                    <asp:LinkButton ID="alnn" runat="server" PostBackUrl="~/aga/LiveNow/AddLiveGame.aspx">Canlı Oyun Əlavə Et</asp:LinkButton></td>
                <td>
                    <asp:LinkButton ID="ubet" runat="server" PostBackUrl="~/aga/OnlineBetting/UpdateOnlineBetting.aspx">Update Online Betting</asp:LinkButton></td>
                <td>
                    <asp:LinkButton ID="esn" runat="server" PostBackUrl="~/aga/SaytXeberleri/EditSiteNews.aspx">Edit Sayt News</asp:LinkButton></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="dfn" runat="server" PostBackUrl="~/aga/FutbolXeberleri/DeleteFootBallNews.aspx">Delete Football News</asp:LinkButton></td>
                <td>
                    <asp:LinkButton ID="uln" runat="server" PostBackUrl="~/aga/LiveNow/UpdateLiveGame.aspx">Canlı Oyunu Yenilə</asp:LinkButton></td>
                <td>
                </td>
                <td>
                    <asp:LinkButton ID="dsn" runat="server" PostBackUrl="~/aga/SaytXeberleri/DeleteSiteNews.aspx">Delete Sayt News</asp:LinkButton></td>
            </tr>
        </table>
    
    </div>
        <table style="border-right: black 1px solid; border-top: black 1px solid; font-size: 10pt;
            vertical-align: middle; border-left: black 1px solid; width: 206px; border-bottom: black 1px solid;
            font-family: Tahoma; height: 181px; text-align: center">
            <tr>
                <td style="color: white; background-color: navy">
                    <strong>Maliyyə Bölməsi</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="cb" runat="server" PostBackUrl="~/aga/Finans/CurrentBets.aspx">Current Bets</asp:LinkButton></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="mg" runat="server" PostBackUrl="~/aga/Finans/MostGainers.aspx">Most Gainers</asp:LinkButton></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="ml" runat="server" PostBackUrl="~/aga/Finans/MostLosers.aspx">Most Losers</asp:LinkButton></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="cw" runat="server" PostBackUrl="~/aga/Finans/CalculateWins.aspx">Calculate Wins</asp:LinkButton></td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="rep" runat="server" PostBackUrl="~/aga/Finans/Reporting.aspx">Reporting</asp:LinkButton></td>
            </tr>
        </table>
    </form>
</body>
</html>
