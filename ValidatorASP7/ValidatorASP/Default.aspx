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
        <table>
            <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox1" />
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        ErrorMessage="Error"
                        ControlToValidate="TextBox1"
                        runat="server"
                        ValidationGroup="ValidationGroup1" />
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox2" />
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        ErrorMessage="Error"
                        ControlToValidate="TextBox2"
                        runat="server"
                        ValidationGroup="ValidationGroup1" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button
                        ID="Button1"
                        Text="First group"
                        runat="server"
                        ValidationGroup="ValidationGroup1" />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox3" />
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3"
                        ErrorMessage="Error"
                        ControlToValidate="TextBox3"
                        runat="server"
                        ValidationGroup="ValidationGroup2" />
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox4" />
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4"
                        ErrorMessage="Error"
                        ControlToValidate="TextBox4"
                        runat="server"
                        ValidationGroup="ValidationGroup2" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button
                        ID="Button2"
                        Text="Second group"
                        runat="server"
                        ValidationGroup="ValidationGroup2" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
