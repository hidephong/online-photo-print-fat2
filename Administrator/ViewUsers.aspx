<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="OrderPhotoPL_Admin_ViewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="View List User"></asp:Label>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" DescriptionUrl="Default.aspx"
        ImageUrl="Images/Web icon 32x32/administrator.png" />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Admin home</asp:HyperLink>
</asp:Content>

