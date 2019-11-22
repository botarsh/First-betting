<%@ page language="VB" autoeventwireup="false" inherits="_Default, App_Web_default.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İddia - Online Betting, Canlı Stavkalar, Bəhslər, Futbol haqqında xəbərlər, analizlər, statistikalar</title>
</head>
<body style="background-color: silver">
    <form id="form1" runat="server"><div id="xta" runat="server" />
        <asp:Panel ID="pnlInfo" runat="server" Height="1px" Style="font-size: 10pt;
            color: white; font-family: Tahoma; border-top-width: 1px; border-left-width: 1px; border-left-color: yellow; border-bottom-width: 1px; border-bottom-color: yellow; border-top-color: yellow; border-right-width: 1px; border-right-color: yellow;" Width="601px" Visible="False">
            <asp:Button ID="BtnLogOut" runat="server" Font-Bold="True" Height="19px" Style="font-size: 8pt;
                vertical-align: top; font-family: Tahoma; text-align: center" Text="Çıxış" Width="37px" />
            <asp:LoginName ID="LoginName1" runat="server" FormatString="Xoş gəlmisiniz, {0}" />
            &nbsp; &nbsp;
            <asp:Label ID="bal" runat="server" EnableViewState="False" Text="Sizin balansınız:"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            <asp:HyperLink ID="lnk" runat="server" NavigateUrl="~/hesablar/Default.aspx" BackColor="Transparent" Font-Bold="False" ForeColor="Black">İstifadəçi Paneli</asp:HyperLink>
            &nbsp;-
            <asp:LinkButton ID="lnkPM" runat="server" Font-Bold="False" ForeColor="Black" PostBackUrl="~/hesablar/ozme/Default.aspx">Şəxsi Mesajlarım</asp:LinkButton>
            - &nbsp;<asp:LinkButton ID="lnkSM" runat="server" Font-Bold="False" ForeColor="Black"
                PostBackUrl="~/hesablar/Default.aspx">İctimai Mesaj Göndər</asp:LinkButton>
            -
            <asp:LinkButton ID="lnkRM" runat="server" Font-Bold="False" ForeColor="Black" PostBackUrl="~/hesablar/acc/Default.aspx">Balans Əməliyyatları</asp:LinkButton>
            -
            <asp:Button ID="btnActivate" runat="server" Font-Bold="True" Height="18px" Style="font-size: 8pt;
                vertical-align: top; font-family: Tahoma; text-align: center" Text="Hesabı Aktivləşdir"
                Width="110px" /></asp:Panel>
        &nbsp;&nbsp;
        <asp:AdRotator ID="AdRotate" runat="server" AlternateTextField="Reklam Bloku"
            Height="70px" Style="left: 623px; position: absolute; top: 5px" Width="465px" DataSourceID="xmlAds" />
        
        <asp:Panel ID="Panel1" runat="server" Height="208px" Style="left: 282px; position: absolute; top: 931px; border-right: red thin solid; border-top: red thin solid; border-left: red thin solid; border-bottom: red thin solid;"
            Width="125px" Visible="False">
            <asp:SqlDataSource ConnectionString="<%$ ConnectionStrings:SoftCS %>" ID="sqlFNews" runat="server" SelectCommand="SELECT [Nheader], [Nfull], [Ndate] FROM [FootBallNews] ORDER BY [Nid] DESC" />
        <asp:XmlDataSource ID="xmlAds" runat="server" DataFile="~/sekiller/Ads.xml"></asp:XmlDataSource>
            <asp:SqlDataSource ID="sqlBetNow" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>"
                SelectCommand="SELECT Top (5) [Gpair], [G1], [G2], [G3], [Gbasa], [Gbata], [Status] FROM [GamesForBet] WHERE ([Status] = 'Ok') ORDER BY [Gid] DESC">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Ok" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlFootballNews" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>"
                SelectCommand="SELECT TOP (20) [Nheader], [Nfull], [Ndate] FROM [FootBallNews] ORDER BY [Nid] DESC">
            </asp:SqlDataSource>
            <asp:XmlDataSource ID="xml225x225Ads" runat="server" DataFile="~/sekiller/225x225.xml">
            </asp:XmlDataSource>
            <asp:XmlDataSource ID="xml728x145Ads" runat="server" DataFile="~/sekiller/728x145.xml">
            </asp:XmlDataSource>
            <asp:SqlDataSource ID="sqlLiveNow" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>"
                SelectCommand="SELECT TOP (5) [Lpair], [Lscore], [Ldurum] FROM [LiveNow] ORDER BY [Lid] DESC">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlupn" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>"
                SelectCommand="SELECT TOP (10) [Unid], [Unheader], [Undate], [Unauth] FROM [UserPublicMessages] ORDER BY Unid DESC">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sqlRating" runat="server" ConnectionString="<%$ ConnectionStrings:SoftCS %>"
                SelectCommand="SELECT * FROM [Users] ORDER BY [Ubalans] DESC">
            </asp:SqlDataSource>
        </asp:Panel>

        
        <asp:Login ID="Login1" runat="server" Height="53px" Style="left: 10px; position: absolute; top: 9px; font-size: 10pt; font-family: Tahoma;"
            Width="594px" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" LoginButtonText="Giriş" Orientation="Horizontal" PasswordRequiredErrorMessage="Şifrə tələb olunur" RememberMeText="Məni xatırla" TitleText="Hesabınıza Daxil Olun" UserNameLabelText="İstifadəçi:" VisibleWhenLoggedIn="False">
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                            Font-Names="Tahoma" Font-Size="0.8em" ForeColor="#284775" />
                    </asp:Login>
        <br />
        <br />
        <br /><br />
        <table style="border-right: yellow 1px solid; border-top: yellow 1px solid; font-size: 10pt;
            vertical-align: middle; border-left: yellow 1px solid; width: 1080px; border-bottom: yellow 1px solid;
            font-family: Tahoma; text-align: left; font-weight: bold; color: white; background-color: #5d7b9d;">
            <tr>
                <td style="height: 21px; width: 156px;">
                    &nbsp;<asp:HyperLink ID="lnkReg" runat="server" ForeColor="White" NavigateUrl="Qeydiyyat.aspx">Qeydiyyat</asp:HyperLink></td>
                <td style="height: 21px">
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Pages/Presentation.aspx">Təqdimat</asp:HyperLink></td>
                <td style="height: 21px">
                    <asp:HyperLink ID="lnkFixture" runat="server" ForeColor="White" NavigateUrl="~/Pages/Fixture.aspx">Fikstura</asp:HyperLink></td>
                <td style="height: 21px; width: 134px;">
                    <asp:HyperLink ID="lnkYardim" runat="server" ForeColor="White" NavigateUrl="~/Pages/Komek.aspx">Kömək</asp:HyperLink></td>
                <td style="height: 21px; width: 136px;">
                    <asp:HyperLink ID="lnkQaydalar" runat="server" ForeColor="White" NavigateUrl="~/Pages/Qaydalar.aspx">Qaydalar</asp:HyperLink></td>
                <td style="height: 21px; width: 151px;">
                    <asp:HyperLink ID="lnkAbout" runat="server" ForeColor="White" NavigateUrl="~/Pages/About-Us.aspx">Şirkət Haqqında</asp:HyperLink>
                </td>
                <td style="width: 98px; height: 21px">
                    <asp:HyperLink ID="lnkReklam" runat="server" ForeColor="White" NavigateUrl="~/Pages/Media-Kit.aspx">Reklam</asp:HyperLink></td>
                <td style="height: 21px">
                    <asp:HyperLink ID="lnkContact" runat="server" ForeColor="White" NavigateUrl="~/Pages/Elaqe.aspx">Əlaqə</asp:HyperLink></td>
            </tr>
        </table>
        &nbsp;&nbsp;<asp:DataList ID="DataList1" runat="server" DataSourceID="sqlBetNow" Width="370px" style="left: 10px; position: absolute; top: 125px" CellPadding="4" ForeColor="#333333" Height="225px">
            <ItemTemplate>
                <table style="border-right: yellow 1px solid; border-top: yellow 1px solid; font-size: 10pt;
                    border-left: yellow 1px solid; width: 400px; border-bottom: yellow 1px solid;
                    font-family: Tahoma; height: 24px">
                    <tr>
                        <td style="width: 62px; height: 20px; text-align: left;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Gpair") %>' Width="190px" ToolTip='<%# "Başlayır: " & Eval("Gbata") %>'></asp:Label></td>
                        <td style="height: 20px; text-align: center;">
                            <asp:HyperLink ID="lnkgb" runat="server" NavigateUrl='<%# "hesablar/Bet-Now.aspx?sefer=0&sifir=0&ev=" & DataBinder.Eval(Container.DataItem, "G1") & "&kom=" & DataBinder.Eval(Container.DataItem, "Gpair") %>'
                                Text='<%# Eval("G1") %>'></asp:HyperLink></td>
                        <td style="height: 20px; text-align: center;">
                            <asp:HyperLink ID="lnkgi" runat="server" NavigateUrl='<%# "hesablar/Bet-Now.aspx?sefer=0&ev=0&sifir=" & DataBinder.Eval(Container.DataItem, "G2") & "&kom=" & DataBinder.Eval(Container.DataItem, "Gpair") %>'
                                Text='<%# Eval("G2") %>'></asp:HyperLink></td>
                        <td style="height: 20px; text-align: center;">
                            <asp:HyperLink ID="lnkgu" runat="server" NavigateUrl='<%# "hesablar/Bet-Now.aspx?ev=0&sifir=0&sefer=" & DataBinder.Eval(Container.DataItem, "G3") & "&kom=" & DataBinder.Eval(Container.DataItem, "Gpair") %>'
                                Text='<%# Eval("G3") %>'></asp:HyperLink></td>
                        <td style="height: 20px; text-align: center;">
                            <asp:LinkButton ID="lnks" runat="server" Text='<%# Eval("Gbasa") %>' ToolTip='<%# Eval("Gbata") %>'></asp:LinkButton></td>
                    </tr>
                </table>
            </ItemTemplate>
            <HeaderTemplate>
                <asp:Label ID="Label2" runat="server" Style="font-weight: bold; font-size: 10pt;
                    font-family: Tahoma; text-align: center" Text="Bir azdan başlayır!" Width="400px"></asp:Label>
                <asp:Label ID="Label3" runat="server" Style="font-weight: bold; font-size: 10pt;
                    font-family: Tahoma; text-align: left" Text="Komanda" Width="184px"></asp:Label>
                <asp:Label ID="Label4" runat="server" Style="font-weight: bold; font-size: 10pt;
                    font-family: Tahoma; text-align: center" Text="G1" Width="42px"></asp:Label>
                <asp:Label ID="Label5" runat="server" Style="font-weight: bold; font-size: 10pt;
                    font-family: Tahoma; text-align: center" Text="Gx" Width="37px"></asp:Label>
                <asp:Label ID="Label6" runat="server" Style="font-weight: bold; font-size: 10pt;
                    font-family: Tahoma; text-align: center" Text="G2" Width="33px"></asp:Label>
                <asp:Label ID="Label7" runat="server" Style="font-weight: bold; font-size: 10pt;
                    font-family: Tahoma; text-align: center" Text="Başlayır" Width="58px"></asp:Label>
            </HeaderTemplate>
            <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#5D7B9D" ForeColor="White" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DataList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="xml728x145Ads" Height="145px"
            Style="left: 10px; position: absolute; top: 355px; border-right: yellow 1px solid; border-top: yellow 1px solid; border-left: yellow 1px solid; border-bottom: yellow 1px solid;" Width="728px" />
        &nbsp;<br />
        &nbsp;&nbsp;
        <asp:AdRotator ID="AdRotator1" runat="server" Height="225px" Style="left: 424px;
            position: absolute; top: 125px; border-right: yellow 1px solid; border-top: yellow 1px solid; border-left: yellow 1px solid; border-bottom: yellow 1px solid;" Width="225px" DataSourceID="xml225x225Ads" />
        &nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
            CellPadding="4" DataSourceID="sqlFootballNews" Font-Names="Tahoma" Font-Size="Small"
            ForeColor="#333333" GridLines="None" Height="226px" Style="left: 656px; position: absolute;
            top: 125px; border-right: yellow 1px solid; border-top: yellow 1px solid; border-left: yellow 1px solid; border-bottom: yellow 1px solid;" Width="434px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <EmptyDataTemplate>
                Burada futbol xəbərləri olacaqdır!
            </EmptyDataTemplate>
            <FooterTemplate>
                <asp:Label ID="lblNewsFooter" runat="server" Font-Names="Tahoma" Font-Size="X-Small"
                    ForeColor="White" Text="Xəbərlərin düzgünlüyü və tərkibinə görə sayt rəhbərliyi məsuliyyətdaşımır!"
                    Width="408px"></asp:Label>
            </FooterTemplate>
            <Fields>
                <asp:BoundField DataField="Nheader" HeaderText="Başlıq" SortExpression="Nheader">
                    <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Nfull" HeaderText="Xəbər" SortExpression="Nfull">
                    <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Ndate" HeaderText="Tarix" SortExpression="Ndate">
                    <HeaderStyle Width="100px" />
                </asp:BoundField>
            </Fields>
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <asp:Label ID="lblFootNewsHeader" runat="server" Font-Names="Tahoma" Font-Size="Small"
                    Style="vertical-align: middle; text-align: center" Text="Ən Son Futbol Xəbərləri"
                    Width="391px"></asp:Label>
            </HeaderTemplate>
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataSourceID="sqlLiveNow" Font-Names="Tahoma" Font-Size="Small" ForeColor="#333333"
            GridLines="None" Style="left: 743px; position: absolute; top: 355px; border-right: yellow 1px solid; border-top: yellow 1px solid; border-left: yellow 1px solid; border-bottom: yellow 1px solid;" Width="347px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="Lpair" HeaderText="Komandalar" SortExpression="Lpair" >
                    <HeaderStyle Width="235px" HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Lscore" HeaderText="Hesab" SortExpression="Lscore">
                    <HeaderStyle Width="25px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Ldurum" HeaderText="Durum" SortExpression="Ldurum">
                    <HeaderStyle Width="90px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <br />
        <asp:DataList ID="dlupn" runat="server" Style="border-right: yellow 1px solid; border-top: yellow 1px solid;
            border-left: yellow 1px solid; border-bottom: yellow 1px solid; left: 10px; position: absolute; top: 505px;" CellPadding="4" DataSourceID="sqlupn" ForeColor="#333333" Width="400px">
            <ItemTemplate>
                <asp:HyperLink ID="hlnevs" runat="server" Font-Names="Tahoma" Font-Size="Small" NavigateUrl='<%# "upn.aspx?did=" & DataBinder.Eval(Container.DataItem, "Unid") %>'
                    Width="400px" Text='<%# Eval("Unheader") %>' ToolTip='<%# Eval("Unauth") & " yazıb" %>'></asp:HyperLink>
            </ItemTemplate>
            <HeaderTemplate>
                <asp:Label ID="Label8" runat="server" BackColor="#5D7B9D" Font-Names="Tahoma" Font-Size="Small"
                    ForeColor="White" Text="İsifadəçi fikirləri, statistika və həvəskar xəbərlər" Width="400px" Font-Bold="True"></asp:Label>
            </HeaderTemplate>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <FooterTemplate>
                <asp:HyperLink ID="hlutos" runat="server" Font-Names="Tahoma" Font-Size="Small" NavigateUrl="~/Pages/TOS.aspx"
                    Width="400px">İstifadəçi Mesajlarına görə sayt rəhbərliyi məsuliyyət daşımır</asp:HyperLink>
            </FooterTemplate>
        </asp:DataList><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList2" runat="server" DataKeyField="Uhesab" DataSourceID="sqlRating" style="border-right: yellow 1px solid; border-top: yellow 1px solid; left: 870px; border-left: yellow 1px solid; border-bottom: yellow 1px solid; position: absolute; top: 505px" CellPadding="4" ForeColor="#333333" Width="215px">
            <ItemTemplate>
                <asp:HyperLink ID="hlaccname" runat="server" Font-Names="Tahoma" Font-Size="Small"
                    Text='<%# Eval("Uhesab") %>' Width="130px"></asp:HyperLink>
                <asp:HyperLink ID="HyperLink10" runat="server" Font-Names="Tahoma" Font-Size="Small"
                    Text='<%# Eval("Ubalans", "{0:F}") %>' Width="65px" style="text-align: center"></asp:HyperLink>
            </ItemTemplate>
            <HeaderTemplate>
                <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" ForeColor="White"
                    Text="Reytinq" Width="210px" style="text-align: center" BackColor="#5D7B9D"></asp:Label>
            </HeaderTemplate>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <FooterTemplate>
                <asp:Label ID="Label10" runat="server" BackColor="Desktop" Font-Names="Tahoma" Font-Size="Small"
                    ForeColor="White" Text="*Hesablamalar Təxminidir" Width="210px"></asp:Label>
            </FooterTemplate>
        </asp:DataList><br />
        &nbsp;<br />
        <div ID="xeberler" runat="server" Height="345px" Style="border-right: yellow 1px solid;
            border-top: yellow 1px solid; left: 425px; border-left: yellow 1px solid; border-bottom: yellow 1px solid;
            position: absolute; top: 506px; vertical-align: top; width: 439px; height: 323px; text-align: left;" Width="438px">
            <asp:Image ID="ximage" runat="server" Height="225px" Width="225px" style="vertical-align: top; position: static; text-align: left" />
            <asp:TextBox ID="thead" runat="server" BackColor="Silver" BorderStyle="None" EnableTheming="True"
                ForeColor="Black" Height="127px" ReadOnly="True" Style="font-weight: bold; font-size: 10pt;
                left: 240px; color: black; font-family: Tahoma; position: absolute; top: 45px"
                TextMode="MultiLine" Width="175px"></asp:TextBox>
            <asp:TextBox ID="tfull" runat="server" BackColor="Silver" BorderStyle="None" ForeColor="Black"
                Height="84px" ReadOnly="True" Style="font-size: 10pt; left: 3px; color: black;
                font-family: Tahoma; position: absolute; top: 230px" TextMode="MultiLine" Width="429px"></asp:TextBox>
            <asp:TextBox ID="ttime" runat="server" BackColor="Silver" BorderStyle="None" ForeColor="Black"
                Height="16px" ReadOnly="True" Style="font-weight: bold; font-size: 10pt; left: 241px;
                color: black; font-family: Tahoma; position: absolute; top: 202px" TextMode="MultiLine"
                Width="175px"></asp:TextBox>
        </div>
        <br />
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
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Pages/About-Us.aspx">Şirkət Haqqında</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" NavigateUrl="~/Pages/Qaydalar.aspx">Qaydalar</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Pages/Komek.aspx">Kömək</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="White" NavigateUrl="~/Pages/Komek.aspx">Media Çantası</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" NavigateUrl="~/Pages/Elaqe.aspx">Əlaqə Saxla</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" NavigateUrl="~/Pages/TOS.aspx">Xidmətin Şərtləri</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" NavigateUrl="~/Pages/Privacy-Policy.aspx">Gizlilik Siyasəti</asp:HyperLink></td>
            </tr>
        </table>     
    </form>
</body>
</html>
