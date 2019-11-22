Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.Control
Imports System.Web.UI.HtmlControls
Imports system.Globalization

Partial Class hesablar_Bet_Now
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.IsAuthenticated Then
            lblu.Text = lblu.Text + " " & User.Identity.Name
            BalansGoster()
            FromDataListToBetForm()
            bosluqlar()
        Else
            Response.Redirect("../Default.aspx")

        End If
    End Sub

    Protected Sub BalansGoster()
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
            bal.Text = (bal.Text) + " " & sdrDataB(2) & " AZN"
            risk.Text = risk.Text + " " & sdrDataB(2) * 10 / 100
            bfor.Text = sdrDataB(2)
        End While
        sdrDataB.Close()
        sqlConnB.Close()
    End Sub

    Protected Sub FromDataListToBetForm()

        g1.Text = Request.QueryString("ev")
        gx.Text = Request.QueryString("sifir")
        g2.Text = Request.QueryString("sefer")
        kom.Text = Request.QueryString("kom")



    End Sub

    Protected Sub btnCal_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCal.Click
	Dim n1 as Double = Double.Parse("0,2", CultureInfo.CurrentCulture)

        min10faiz()
        Melumat.Visible = True


        tgel.Text = miq.Text + miq.Text * (g1.Text + gx.Text + g2.Text) * 20 / 100

        ssonra.Text = bfor.Text - miq.Text

        usonra.Text = bfor.Text + miq.Text * (g1.Text + gx.Text + g2.Text) * 20 / 100


    End Sub

    Protected Sub bosluqlar()
        If ((kom.Text = "") Or (g1.Text = "") Or (gx.Text = "") Or (g2.Text = "")) Then
            kom.Visible = False
            g1.Visible = False
            gx.Visible = False
            g2.Visible = False
            miq.Visible = False
            btnCal.Enabled = False
            xeta.Visible = True
            xeta.Text = "Xətalı seçim! Zəhmət olmasa İstifadəçi Panelindən və ya Baş Səhifədən stavka edin."



        End If
    End Sub

    Protected Sub AddToUserBets()
        Dim sqlConnUB As New SqlConnection
        Dim sqlCmdUB As New SqlCommand
        Dim sbUB As New StringBuilder
        Dim cut, be1, bex, be2, beamo, beacc, beinc, bedate As String
        Dim a As Double
        Dim tamgelir As Double

        a = (g1.Text + gx.Text + g2.Text) * 20 / 100
        tamgelir = miq.Text + miq.Text * a


        cut = kom.Text
        be1 = g1.Text
        bex = gx.Text
        be2 = g2.Text
        beamo = miq.Text
        beacc = User.Identity.Name
        beinc = tamgelir.ToString()
        bedate = DateTime.Now()


        sqlConnUB.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnUB.Open()
        sqlCmdUB.CommandText = "INSERT INTO UserBets(Bpair, B1, Bx, B2, Bamount, Baccount, Bincome, Bdate) VALUES('" & cut & "', '" & be1 & "','" & bex & "','" & be2 & "','" & beamo & "', '" & beacc & "','" & beinc & "','" & bedate & "')"
        sqlCmdUB.Connection = sqlConnUB
        sqlCmdUB.ExecuteNonQuery()
        sqlConnUB.Close()
    End Sub

    Protected Sub BalansDuzelt()
        Dim bdacc As String = User.Identity.Name
        Dim bdamo As Double = bfor.Text - miq.Text
        Dim sqlConnUB As New SqlConnection
        Dim sqlCmdUB As New SqlCommand
        Dim sbUB As New StringBuilder

        sqlConnUB.ConnectionString = "Data Source=LABORANT-PC\SQLEXPRESS;Initial Catalog=Soft;Integrated Security=True"
        sqlConnUB.Open()

        sqlCmdUB.CommandText = "UPDATE Users SET Ubalans='" & bdamo & "' WHERE Uhesab='" & bdacc & "' "
        sqlCmdUB.Connection = sqlConnUB
        sqlCmdUB.ExecuteNonQuery()
        sqlConnUB.Close()
        Response.Redirect("Confirmation-Tesdiq.aspx")




    End Sub

    Protected Sub min10faiz()

        If (miq.Text > bfor.Text * 10 / 100) Then
            xeta.Text = "Maksimum stavka miqdarı balansın 10%-i miqdarında olmalıdır!"
            Exit Sub
        End If


    End Sub

    Protected Sub tesdiqle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles tesdiqle.Click
        AddToUserBets()
        BalansDuzelt()
    End Sub
End Class




