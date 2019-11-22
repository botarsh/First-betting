Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Partial Class aga_FutbolXeberleri_fNews
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtDate.Text = DateTime.Now()
    End Sub

    Protected Sub btnAddSiteNews_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddSiteNews.Click
        Dim sqlConnSNews As New SqlConnection
        Dim sqlCmdSNews As New SqlCommand
        Dim sbSNews As New StringBuilder

        sqlConnSNews.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnSNews.Open()
        sqlCmdSNews.CommandText = "INSERT INTO SiteNews(Sheader,Sfull, Sdate) VALUES('" & txtHeader.Text.ToString() & "', '" & txtFull.Text.ToString() & "','" & txtDate.Text.ToString() & "')"
        sqlCmdSNews.Connection = sqlConnSNews
        sqlCmdSNews.ExecuteNonQuery()
        sqlConnSNews.Close()
        Response.Redirect("../Default.aspx")
    End Sub
End Class
