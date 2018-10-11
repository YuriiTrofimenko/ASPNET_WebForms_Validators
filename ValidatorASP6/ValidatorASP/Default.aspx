<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidatorASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Validation summary ASP.NET</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label Text="Login: " runat="server" />
        <asp:TextBox ID="loginTextBox" runat="server" />
        <%-- Валидация login --%>
        <asp:RequiredFieldValidator
            ID="LoginRequiredFieldValidator"
            ControlToValidate="loginTextBox"
            ErrorMessage="Логин ввести надо"
            runat="server"
            Display="None" />
        <br/>
        <asp:Label ID="Label2" Text="Password: " runat="server" />
        <asp:TextBox ID="passwordTextBox" runat="server" />
        <%-- Валидация password --%>
        <asp:RequiredFieldValidator
            ID="PasswordRequiredFieldValidator"
            ControlToValidate="passwordTextBox"
            ErrorMessage="Пароль ввести надо"
            runat="server"
            Display="None" />
        <br/>
        <asp:Button ID="sendButton" Text="Отправить" runat="server" OnClick="sendButton_Click" />
        <br/>
        <asp:ValidationSummary
            ID="ValidationSummary1"
            runat="server"
            ForeColor="Red"
            DisplayMode="BulletList"
            EnableClientScript="true" />
        <br/>
    </div>
    </form>
</body>
</html>
