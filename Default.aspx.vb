Imports System
Imports System.Data
Imports system.Data.Sql
Imports System.Data.SqlClient
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Security.Cryptography
Imports System.Web.Configuration



Partial Class _Default
    Inherits System.Web.UI.Page
    Dim kodla As New RijndaelManaged

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.IsAuthenticated Then
            pnlInfo.Visible = True
            ShowBalance()
            DataList1.Visible = True
        End If
    End Sub

    Protected Sub btnActivate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnActivate.Click
        AdBalans()
    End Sub

    Protected Sub AdBalans()
        Dim sqlConnBalans As New SqlConnection
        Dim sqlCmdBalans As New SqlCommand
        Dim sbBalans As New StringBuilder

        sqlConnBalans.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnBalans.Open()
        sqlCmdBalans.CommandText = "INSERT INTO Users(Uhesab, Ubalans) VALUES('" & User.Identity.Name & "', '250')"
        sqlCmdBalans.Connection = sqlConnBalans
        sqlCmdBalans.ExecuteNonQuery()
        sqlConnBalans.Close()
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub ShowBalance()
        Dim sqlConnB As New SqlConnection
        Dim sqlCmdB As New SqlCommand
        Dim sdrDataB As SqlDataReader
        Dim sbB As New StringBuilder
        Dim uadi As String

        uadi = User.Identity.Name

        sqlConnB.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"

        sqlConnB.Open()

        sqlCmdB.CommandText = "SELECT * FROM Users WHERE Uhesab='" & uadi & "'"
        sqlCmdB.Connection = sqlConnB
        sdrDataB = sqlCmdB.ExecuteReader()

        While sdrDataB.Read()


            If sdrDataB(2).ToString.Length > 0 Then
                bal.Text = bal.Text + " " & sdrDataB(2) & " AZN"
                btnActivate.Visible = False
            Else
                btnActivate.Visible = True
            End If
        End While
        sdrDataB.Close()
        sqlConnB.Close()
    End Sub

    Protected Sub BtnLogOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnLogOut.Click
        FormsAuthentication.SignOut()
        Response.Redirect("Default.aspx")
    End Sub
End Class
