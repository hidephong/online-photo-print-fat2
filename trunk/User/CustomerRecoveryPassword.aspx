<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CustomerRecoveryPassword.aspx.cs" Inherits="CustomerRecoveryPassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 85px">
                &nbsp;</td>
            <td>
                Recovery password</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px">
                &nbsp;</td>
            <td>
                Please enter username and email to recovery password</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px">
                Username:</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" 
                    ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px">
                Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="303px"></asp:TextBox>
                <asp:Label ID="lblCheckSend" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSend" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

