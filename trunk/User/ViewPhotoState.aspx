<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ViewPhotoState.aspx.cs" Inherits="OrderPhotoPL_Customer_ViewPhotoState" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            &nbsp;<table style="width: 235px">
                <tr>
                    <td style="width: 524px">
                    </td>
                    <td style="width: 151px">
                        <asp:Label ID="lblTitleViewStatus" runat="server" Text="Check Photo Status"></asp:Label></td>
                    <td style="width: 4371px">
                    </td>
                </tr>
                <tr>
                    <td style="height: 59px">
                        <asp:Label ID="Label2" runat="server" Text="Identity Number:"></asp:Label></td>
                    <td style="width: 151px; height: 59px">
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
                    <td style="height: 59px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Not blank" ControlToValidate="txtID"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td style="width: 524px; height: 23px">
                    </td>
                    <td style="width: 151px; height: 23px">
                        <asp:Button ID="Button1" runat="server" Text="Check" OnClick="Button1_Click" /></td>
                    <td style="width: 4371px; height: 23px">
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            &nbsp;
            <table style="width: 625px">
                <tr>
                    <td>
    <asp:Label ID="lblStatus" runat="server"></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hplHome" runat="server" NavigateUrl="~/OrderPhotoPL/Customer/Default.aspx">Home</asp:HyperLink></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

