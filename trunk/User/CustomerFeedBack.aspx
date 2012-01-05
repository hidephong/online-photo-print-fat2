<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CustomerFeedBack.aspx.cs" Inherits="OrderPhotoPL_Customer_CustomerFeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" style="width:100%;">
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="Label1" runat="server" Text=" Customer FeedBack"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="justify" style="width: 196px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Title :"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TxtName" runat="server" Width="280px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="justify" style="width: 196px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Message :"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TxtMess" runat="server" Height="68px" TextMode="MultiLine" 
                    Width="280px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtMess" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="center" style="width: 196px">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="justify" style="width: 196px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
                    onclick="BtnSubmit_Click" />
            </td>
            <td align="left">
                <asp:Button ID="Button1" runat="server" Text="Reset" />
            </td>
        </tr>
    </table>
</asp:Content>

