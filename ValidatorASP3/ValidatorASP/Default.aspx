<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidatorASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" Text="Введите пароль: " runat="server" />
        <asp:TextBox ID="passTextBox1" runat="server" />
        <br/>
        <asp:Label ID="Label2" Text="Повторите пароль: " runat="server" />
        <asp:TextBox ID="passTextBox2" runat="server" />
        <%-- Валидация на клиенте --%>
        <asp:CompareValidator
            ErrorMessage="Пароли не совпадают"
            ControlToValidate="passTextBox2"
            ControlToCompare="passTextBox1"
            runat="server"
            ForeColor="Red" />
        <br/>
        <asp:Label ID="Label3" Text="Введите еще что-то: " runat="server" />
        <asp:TextBox ID="anotherTextBox" runat="server" />
        <br/>
        <asp:Button ID="sendButton" Text="Отправить" runat="server" OnClick="sendButton_Click" />
    </div>
    </form>
</body>
</html>
