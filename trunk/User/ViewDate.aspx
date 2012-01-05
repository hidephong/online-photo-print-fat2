<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ViewDate.aspx.cs" Inherits="OrderPhotoPL_Customer_ViewDate" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Label ID="Label1" runat="server" Text="Check time to complex."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Identity Order:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 3px">
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Check" OnClick="Button1_Click" />
                    </td>
                    <td style="width: 3px">
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            
            
            <table>
                <tr>
                    <td><asp:Label ID="lblResult" runat="server"></asp:Label>
                   
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" DescriptionUrl="~/OrderPhotoPL/Customer/Default.aspx" ImageUrl="~/OrderPhotoPL/Customer/Images/icons/house.png" />
                    </td>
                </tr>
                
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

