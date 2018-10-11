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
        <asp:Label Text="Какие Ваши доказательства?" runat="server" />
        <asp:TextBox ID="textBox1" runat="server" />
        <asp:RequiredFieldValidator
            ErrorMessage="Это поле должно быть заполнено"
            ControlToValidate="textBox1"
            runat="server"
            ForeColor="Red" />
        <br/>
        <asp:Button ID="sendButton" Text="Отправить" runat="server" OnClick="sendButton_Click" />
    </div>
    </form>
</body>
</html>
