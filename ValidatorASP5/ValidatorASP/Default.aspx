<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidatorASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Custom validator ASP.NET</title>
    <script>
        function validateClient(errorMessage, inputValue) {
            if (inputValue.Value % 2 != 0) {
                inputValue.IsValid = true;
            } else {
                errorMessage.innerHTML = "Ошибка!";
                inputValue.IsValid = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label Text="Введите нечетное число: " runat="server" />
        <asp:TextBox ID="textBox1" runat="server" />
        <%-- Валидация на клиенте --%>
        <asp:CustomValidator
            ControlToValidate="textBox1"
            runat="server"
            ForeColor="Red"
            ClientValidationFunction="validateClient"
            OnServerValidate="Unnamed_ServerValidate" />
        <br/>
        <asp:Button ID="sendButton" Text="Отправить" runat="server" OnClick="sendButton_Click" />
    </div>
    </form>
</body>
</html>
