Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient

Partial Class aga_FutbolXeberleri_fNews
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        tarix.Text = DateTime.Now()
        txtBetPair.Focus()
    End Sub



    Protected Sub btnAddBetGame_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddBetGame.Click
        Dim sqlConnBet As New SqlConnection
        Dim sqlCmdBet As New SqlCommand
        Dim sbBet As New StringBuilder
        Dim kad, data, basa, bata As String

        kad = txtBetPair.Text.ToString()
        data = tarix.Text.ToString()
        basa = txtbasa.Text.ToString()
        bata = txtbata.Text.ToString()


        sqlConnBet.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnBet.Open()
        sqlCmdBet.CommandText = "INSERT INTO GamesForBet(Gpair, G1, G2, G3, Gdate, Gbata, Gbasa, Status) VALUES('" & kad & "', '" & g1.Text & "', '" & g2.Text & "','" & g3.Text & "','" & data & "','" & bata & "','" & basa & "','" & st.Text.ToString() & "')"
        sqlCmdBet.Connection = sqlConnBet
        sqlCmdBet.ExecuteNonQuery()
        sqlConnBet.Close()
        Response.Redirect("../Default.aspx")
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        txtbata.Text = Calendar1.SelectedDate.ToString()
    End Sub
End Class
