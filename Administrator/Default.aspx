<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="OrderPhotoPL_Admin_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Welcome! You login success!<table style="width: 780px; height: 315px">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" DescriptionUrl="AddUser.aspx"
                    ImageUrl="Images/Web icon 32x32/user_add.png" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AddUser.aspx">Add user</asp:HyperLink></td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" DescriptionUrl="BlockUser.aspx"
                    ImageUrl="Images/Web icon 32x32/user_delete.png" />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="BlockUser.aspx">Block or remove user </asp:HyperLink></td>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" DescriptionUrl="ChangeInfoAdmin.aspx"
                    ImageUrl="Images/Web icon 32x32/user_edit.png" />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="ChangeInfoAdmin.aspx">Change my information</asp:HyperLink></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton4" runat="server" DescriptionUrl="AdminViewFeedback.aspx"
                    ImageUrl="Images/Web icon 32x32/user_comment.png" />
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="AdminViewFeedback.aspx">View Feedback</asp:HyperLink></td>
            <td>
                <asp:ImageButton ID="ImageButton5" runat="server" DescriptionUrl="ViewUsers.aspx"
                    ImageUrl="Images/Web icon 32x32/group.png" />
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="ViewUsers.aspx">View Users</asp:HyperLink></td>
            <td>
                <asp:ImageButton ID="ImageButton6" runat="server" DescriptionUrl="UpdateUser.aspx"
                    ImageUrl="Images/Web icon 32x32/group_edit.png" />
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="UpdateUser.aspx">Edit user</asp:HyperLink></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton7" runat="server" DescriptionUrl="Default.aspx"
                    ImageUrl="Images/Web icon 32x32/administrator.png" />
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="Default.aspx">Admin home</asp:HyperLink></td>
            <td>
                <asp:Image ID="Image6" runat="server" Width="16px" />
                <asp:HyperLink ID="HyperLink9" runat="server" 
                    NavigateUrl="AdminViewOrderDetails.aspx">View Order Details</asp:HyperLink>
            </td>
            <td>
                <asp:Image ID="Image9" runat="server" /></td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton8" runat="server" />
                <asp:HyperLink ID="HyperLink8" runat="server">HyperLink</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

