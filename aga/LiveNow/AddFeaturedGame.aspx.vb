Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient

Partial Class aga_FutbolXeberleri_fNews
    Inherits System.Web.UI.Page

    Protected Sub btnAddFeatured_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddFeatured.Click
        Komanda1()
        Komanda2()

    End Sub

    Protected Sub Komanda1()
        Dim sqlConnKom1 As New SqlConnection
        Dim sqlCmdKom1 As New SqlCommand
        Dim sbKom1 As New StringBuilder

        sqlConnKom1.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnKom1.Open()
        sqlCmdKom1.CommandText = "INSERT INTO Komanda1 VALUES('" & kom1.Text.ToString() & "', '" & ses1.Text.ToString() & "', '" & ip1.Text & "')"
        sqlCmdKom1.Connection = sqlConnKom1
        sqlCmdKom1.ExecuteNonQuery()
        sqlConnKom1.Close()
    End Sub

    Protected Sub Komanda2()
        Dim sqlConnKom2 As New SqlConnection
        Dim sqlCmdKom2 As New SqlCommand
        Dim sbKom2 As New StringBuilder

        sqlConnKom2.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnKom2.Open()
        sqlCmdKom2.CommandText = "INSERT INTO Komanda2 VALUES('" & kom2.Text.ToString() & "', '" & ses2.Text.ToString() & "', '" & ip2.Text & "')"
        sqlCmdKom2.Connection = sqlConnKom2
        sqlCmdKom2.ExecuteNonQuery()
        sqlConnKom2.Close()
        Response.Redirect("../Default.aspx")
    End Sub
End Class
