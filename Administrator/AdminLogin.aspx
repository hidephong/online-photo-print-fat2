<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="OrderPhotoPL_Admin_AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width ="1024" >
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="Label3" runat="server" Text="Login to Administrator" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td>
            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtUser" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblErr" runat="server" ForeColor="Red"></asp:Label></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser"
                    ErrorMessage="Username not blank"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
            <td >
                <asp:TextBox ID="txtPass" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass"
                    ErrorMessage="Password not blank"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 26px">
                <asp:Button ID="btnLoginAdmin" runat="server" Text="Login" OnClick="btnLoginAdmin_Click" /></td>
        </tr>
    </table>
</asp:Content>

