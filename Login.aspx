<%@ page language="VB" autoeventwireup="false" inherits="hesablar_Login, App_Web_login.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Hesab Əməliyyatları</title>
</head>
<body style=" background-color: silver">
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp;
        <table style="font-size: 10pt; vertical-align: middle; width: 1000px; font-family: Tahoma;
            height: 155px; text-align: center">
            <tr>
                <td style="width: 962px; height: 98px">
                    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="xmlLoginAds" Height="60px"
                        Width="465px" />
                </td>
            </tr>
            <tr>
                <td style="width: 962px">
                    <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4"
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Tahoma" Font-Size="Medium"
                        ForeColor="#333333" Height="215px" Width="343px" DestinationPageUrl="~/Default.aspx" LoginButtonText="Giriş" FailureText="Xəta! Yenidən yoxlayın" PasswordLabelText="Şifrə:" PasswordRequiredErrorMessage="Şifrə tələb olunur!" RememberMeText="Məni xatırla" TitleText="Giriş" UserNameLabelText="İstifadəçi adı:" UserNameRequiredErrorMessage="İstifadəçi adı tələb olunur!">
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <TextBoxStyle Font-Size="Small" />
                        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                            Font-Names="Tahoma" Font-Size="Medium" ForeColor="#284775" />
                    </asp:Login>
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Qeydiyyat.aspx" Width="483px">İstifadəçi adınız yoxdursa, zəhmət olmasa bu linki izləyin və qeydiyyatdan keçin</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 962px; height: 291px">
                    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8"
                        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Tahoma" Font-Size="Medium"
                        Height="212px" SubmitButtonText="Göndər" Width="343px" style="left: 79px; top: 315px" AnswerLabelText="Cavab:" AnswerRequiredErrorMessage="Cavab tələb olunur!" GeneralFailureText="Xəta! Yenidən yoxlayın!" QuestionFailureText="Cavabınız qəbul edilmədi. Yenidən yoxlayın" QuestionInstructionText="Şifrənizi əldə etmək üçün aşağıdakı suala cavab verin:" QuestionLabelText="Sual:" QuestionTitleText="Şəxsiyyətin təsdiqi" SuccessText="Şifrəniz e-mail adresinizə göndərilmişdir" UserNameFailureText="Məlumat əldə olunmadı, zəhmət olmasa yenidən yoxlayın" UserNameInstructionText="Şifrənizi əldə etmək üçün istifadəçi adınızı daxil edin:" UserNameLabelText="İstifadəçi adı:" UserNameRequiredErrorMessage="İstifadəçi adı tələb olunur" UserNameTitleText="Şifrənizi Unutmusunuz?">
                        <InstructionTextStyle Font-Italic="False" ForeColor="Black" Font-Names="Tahoma" Font-Size="Small" />
                        <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="Medium" ForeColor="White" Font-Names="Tahoma" />
                        <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                            BorderWidth="1px" Font-Names="Tahoma" Font-Size="Medium" ForeColor="#284775" />
                    </asp:PasswordRecovery>
                </td>
            </tr>
            <tr>
                <td style="width: 962px">
                    <asp:LinkButton ID="lnkMainPage" runat="server" PostBackUrl="Default.aspx">Baş Səhifə</asp:LinkButton>
                    -
                    <asp:HyperLink ID="lnkReg" runat="server" NavigateUrl="Qeydiyyat.aspx">Qeydiyyat</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Pages/Presentation.aspx">Təqdimat</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkYardim" runat="server" NavigateUrl="~/Pages/Komek.aspx">Kömək</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkQaydalar" runat="server" NavigateUrl="~/Pages/Qaydalar.aspx">Qaydalar</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="~/Pages/About-Us.aspx">Şirkət Haqqında</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkReklam" runat="server" NavigateUrl="~/Pages/Media-Kit.aspx">Reklam</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="~/Pages/Elaqe.aspx">Əlaqə</asp:HyperLink></td>
            </tr>
        </table>
        </div>
        <br />
        <asp:XmlDataSource ID="xmlLoginAds" runat="server" DataFile="~/sekiller/Ads.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
