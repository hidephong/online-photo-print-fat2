<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ChangeInfoAdmin.aspx.cs" Inherits="OrderPhotoPL_Admin_ChangeInfoAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="3" align="center">
                Change Administrator Information</td>
        </tr>
        <tr>
            <td style="width: 333px">
                <asp:Label ID="Label1" runat="server" Text="Fullname"></asp:Label>
            </td>
            <td style="width: 354px">
                <asp:TextBox ID="txtFullname" runat="server" Width="277px"></asp:TextBox>
            </td>
            <td style="width: 350px">
            </td>
        </tr>
        <tr>
            <td style="width: 333px">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="width: 354px">
                <asp:TextBox ID="txtUser" runat="server" Width="273px"></asp:TextBox>
            </td>
            <td style="width: 350px">
            </td>
        </tr>
        <tr>
            <td style="width: 333px">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 354px">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="270px"></asp:TextBox>
            </td>
            <td style="width: 350px">
            </td>
        </tr>
    
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
        </tr>
    </table>
</asp:Content>

