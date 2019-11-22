Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Partial Class aga_FutbolXeberleri_fNews
    Inherits System.Web.UI.Page


    Protected Sub btnAddFootballNews_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddFootballNews.Click
        Dim sqlConnNews As New SqlConnection
        Dim sqlCmdNews As New SqlCommand
        Dim sbNews As New StringBuilder

        sqlConnNews.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnNews.Open()
        sqlCmdNews.CommandText = "INSERT INTO FootBallNews(Nheader,Nfull, Ndate) VALUES('" & txtHeader.Text.ToString() & "', '" & txtFull.Text.ToString() & "','" & txtDate.Text.ToString() & "')"
        sqlCmdNews.Connection = sqlConnNews
        sqlCmdNews.ExecuteNonQuery()
        sqlConnNews.Close()
        Response.Redirect("../Default.aspx")



    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtDate.Text = DateTime.Now()
    End Sub
End Class
