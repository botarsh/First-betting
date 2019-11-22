Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports ASP.aga_livenow_addlivegame_aspx

Partial Class aga_FutbolXeberleri_fNews
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtDate.Text = DateTime.Now()
    End Sub

    Protected Sub btnAddLiveNow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddLiveNow.Click
        Dim sqlConnLiveNow As New SqlConnection
        Dim sqlCmdLiveNow As New SqlCommand
        Dim sbLiveNow As New StringBuilder
        Dim vez As String

        vez = durum.Value.ToString()
        sqlConnLiveNow.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnLiveNow.Open()
        sqlCmdLiveNow.CommandText = "INSERT INTO LiveNow(Lpair, Lscore, Ldurum, Ldate) VALUES('" & txtPair.Text.ToString() & "', '" & txtScore.Text.ToString() & "', '" & vez & "','" & txtDate.Text.ToString() & "')"
        sqlCmdLiveNow.Connection = sqlConnLiveNow
        sqlCmdLiveNow.ExecuteNonQuery()
        sqlConnLiveNow.Close()
        Response.Redirect("../Default.aspx")
    End Sub
End Class
