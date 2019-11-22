<%@ page language="VB" autoeventwireup="false" inherits="Qeydiyyat, App_Web_qeydiyyat.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>İddia::Qeydiyyat</title>
</head>
<body style="background-color:Silver">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" ForeColor="White" Style="font-weight: bold;
            font-family: Tahoma" Text="Siz qeydiyyatlı istifadəçisiniz... Zəhmət olmasa Baş Səhifəyə Qayıdın..."
            Visible="False" Width="644px"></asp:Label>
        <table style="font-size: 10pt; vertical-align: middle; width: 1000px; font-family: Tahoma;
            height: 566px; text-align: center">
            <tr>
                <td style="height: 64px">
                    <asp:AdRotator ID="AdRotator1" runat="server" Height="70px" Width="465px"  DataSourceID="xmlRegAds"  />
                </td>
            </tr>
            <tr>
                <td style="height: 429px">
                    <asp:CreateUserWizard ID="cuw" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8"
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Tahoma" Font-Size="0.8em"
                        Height="348px" AnswerLabelText="Gizli cavab:" AnswerRequiredErrorMessage="Gizli sual tələb olunur!" CompleteSuccessText="Siz qeydiyyatdan keçdiniz!" ConfirmPasswordCompareErrorMessage="Şifrələr eyni olmalıdır!" ConfirmPasswordLabelText="Şifrə(Təkrar):" ConfirmPasswordRequiredErrorMessage="Təkrar şifrə tələb olunur!" CreateUserButtonText="Qeydiyyat" DuplicateEmailErrorMessage="Daxil etdiyiniz e-mail artıq istifadə olunur, zəhmət olmasa fərqli email daxil edin!" DuplicateUserNameErrorMessage="Zəhmət olmasa fərqli istifadəçi adı daxil edin..." EmailRegularExpressionErrorMessage="Zəhmət olmasa fərqli e-mail daxil edin" EmailRequiredErrorMessage="E-mail adresi tələb olunur!" InvalidAnswerErrorMessage="Zəhmət olmasa fərqli gizli sual daxil edin" InvalidEmailErrorMessage="Düzgün email adresi daxil edin!" InvalidPasswordErrorMessage="Minimum şifrə uzunluğu: {0}. Minimum {1} işarə sayısı olmalıdır." InvalidQuestionErrorMessage="Fərqli gizli sual daxil edin" PasswordLabelText="Şifrə:" PasswordRegularExpressionErrorMessage="Fərqli şifrə daxil edin" PasswordRequiredErrorMessage="Şifrə tələb olunur!" QuestionLabelText="Gizli sual:" QuestionRequiredErrorMessage="Gizli sual tələb olunur!" UnknownErrorMessage="Xəta! Yenidən yoxlayın" UserNameLabelText="İstifadəçi adı:" UserNameRequiredErrorMessage="İstifadəçi adı tələb olunur!" ContinueDestinationPageUrl="~/Default.aspx" Width="307px">
                        <WizardSteps>
                            <asp:CreateUserWizardStep runat="server">
                            </asp:CreateUserWizardStep>
                            <asp:CompleteWizardStep runat="server">
                            </asp:CompleteWizardStep>
                        </WizardSteps>
                        <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                            BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em"
                            ForeColor="White" HorizontalAlign="Center" />
                        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                            BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
                        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                            BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
                        <StepStyle BorderWidth="0px" />
                    </asp:CreateUserWizard>
                    <br />
                    * Təhlükəsizliyiniz üçün şifrə yazarkən aşağıdakıları nəzərə alın:<br />
                    1. Şifrədə minimum bir böyük və ya kiçik hərf olsun<br />
                    2. Şifrədə minimum bir işarə olsun (!,@,#,$,%,^,&amp;,*,(,),&lt;,&gt;,?,",:,},{,,,.,/,',;,[,],-,=,`,~
                    və s.)</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="lnkMainPage" runat="server" PostBackUrl="Default.aspx" Font-Bold="True">Baş Səhifə</asp:LinkButton>
                    -
                    <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="Login.aspx" Font-Bold="True">Giriş</asp:HyperLink>
                    -
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Pages/Presentation.aspx" Font-Bold="True">Təqdimat</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkYardim" runat="server" NavigateUrl="~/Pages/Komek.aspx" Font-Bold="True">Kömək</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkQaydalar" runat="server" NavigateUrl="~/Pages/Qaydalar.aspx" Font-Bold="True">Qaydalar</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkAbout" runat="server" NavigateUrl="~/Pages/About-Us.aspx" Font-Bold="True">Şirkət Haqqında</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkReklam" runat="server" NavigateUrl="~/Pages/Media-Kit.aspx" Font-Bold="True">Reklam</asp:HyperLink>
                    -
                    <asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="~/Pages/Elaqe.aspx" Font-Bold="True">Əlaqə</asp:HyperLink></td>
            </tr>
        </table>
    
    </div>
        <br />
        <asp:XmlDataSource ID="xmlRegAds" runat="server" DataFile="~/sekiller/Ads.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
