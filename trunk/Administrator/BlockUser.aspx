<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="BlockUser.aspx.cs" Inherits="OrderPhotoPL_Admin_BlockUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="Label2" runat="server" Text="Block Employee"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 350px"> <asp:Label ID="Label1" runat="server" Text="Block ID"></asp:Label></td>
        
            
            <td style="width: 344px">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
            <td style="width: 468px">
            </td>
        </tr>
        <tr>
            <td style="width: 350px">
            </td>
            <td style="width: 344px">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td style="width: 468px">
            </td>
        </tr>
    </table>
</asp:Content>

