Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient

Partial Class hesablar_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.IsAuthenticated Then
            txttest.Text = "Sən qeydiyyatlı istifadəçisən"
        Else
            Response.Redirect("../login.aspx")
        End If
    End Sub
End Class
