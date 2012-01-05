<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="OrderPhotoPL_Customer_Upload" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
         &nbsp;<table>
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
            </td>
            <td>
                <asp:FileUpload ID="fuPicture" runat="server" /></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" /></td>
            <td>
            </td>
        </tr>
    </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <asp:Image ID="imgPrivew" runat="server" Width="400px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next" /></asp:View>
    </asp:MultiView>
</asp:Content>

