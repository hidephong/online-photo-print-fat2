<%@ Page Language="C#" MasterPageFile="MasterHome.master" AutoEventWireup="true" CodeFile="CustomerLogin.aspx.cs" Inherits="OrderPhotoPL_Customer_CustomerLogin" Title=" " %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 86px">
                <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
            </td>
            <td style="width: 151px">
                <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
            </td>
            <td style="width: 76px">
                <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
            </td>
            <td style="width: 166px">
                <asp:TextBox ID="TxtPass" runat="server" style="margin-left: 0px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Login" Width="71px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 86px">
                &nbsp;</td>
            <td style="width: 151px">
                &nbsp;</td>
            <td style="width: 76px">
                &nbsp;</td>
            <td style="width: 166px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 86px">
                &nbsp;</td>
            <td style="width: 151px">
                &nbsp;</td>
            <td style="width: 76px">
                &nbsp;</td>
            <td style="width: 166px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

