Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub RadDataForm1_PreRender(sender As Object, e As EventArgs)
        If RadDataForm1.Skin <> SelectedSkin Then
            RadDataForm1.Skin = SelectedSkin
            RadDataForm1.Rebind()
        End If
    End Sub

    Public ReadOnly Property SelectedSkin() As String
        Get
            Return If(DirectCast(Session(Telerik.QuickStart.QSFConstants.SelectedSkinLiteral), String), ConfigurationManager.AppSettings("Telerik.Skin"))
        End Get
    End Property

End Class