
Partial Class aga_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.Name = "Laborant" Then
            s.InnerHtml = "Administrator, Xoş Gəlmisiniz!"
        Else
            Response.Redirect("../Default.aspx")
        End If
    End Sub
End Class
