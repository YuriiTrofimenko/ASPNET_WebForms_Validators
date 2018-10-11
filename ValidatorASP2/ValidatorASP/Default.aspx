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
        <asp:Label Text="Введите Ваш возраст" runat="server" />
        <asp:TextBox ID="textBox1" runat="server" />
        <%-- Валидация на клиенте --%>
        <asp:RangeValidator
            ErrorMessage="Значение должно быть не менее 18"
            ControlToValidate="textBox1"
            runat="server"
            ForeColor="Red"
            MinimumValue="18"
            MaximumValue="150"
            Type="Integer" />
        <br/>
        <asp:Button ID="sendButton" Text="Отправить" runat="server" OnClick="sendButton_Click" />
    </div>
    </form>
</body>
</html>
