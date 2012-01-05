<%@ Page Language="C#" MasterPageFile="MasterHome.master" AutoEventWireup="true" CodeFile="ViewPhotos.aspx.cs" Inherits="OrderPhotoPL_Customer_SizeAndQuanlity"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dtlPhoto" runat="server" DataKeyField="CILID" CellPadding="4" ForeColor="#333333" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" >
        <ItemTemplate>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/OrderPhotoOnline/User/Files/Customer/Photos/"+Eval("ImageLink") %>' Width="200px" /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "/OrderPhotoOnline/User/ViewCostSize.aspx?"+Eval("CILID") %>' OnClick="LinkButton1_Click">Choice</asp:LinkButton>
        </ItemTemplate>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </asp:Content>

