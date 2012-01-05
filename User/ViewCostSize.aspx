<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ViewCostSize.aspx.cs" Inherits="OrderPhotoPL_Customer_ViewCostSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PSCID"
        DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="PSCID" HeaderText="PSCID" ReadOnly="True" SortExpression="PSCID" />
            <asp:BoundField DataField="PSCName" HeaderText="PSCName" SortExpression="PSCName" />
            <asp:BoundField DataField="SizeIn" HeaderText="SizeIn" SortExpression="SizeIn" />
            <asp:BoundField DataField="SizeCm" HeaderText="SizeCm" SortExpression="SizeCm" />
            <asp:BoundField DataField="PSCCost" HeaderText="PSCCost" SortExpression="PSCCost" />
            <asp:BoundField DataField="PSCNote" HeaderText="PSCNote" SortExpression="PSCNote" />
            <asp:CommandField SelectText="Choice" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    &nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OODPPConnectionString %>"
        SelectCommand="SELECT * FROM [PrintSizeCost]"></asp:SqlDataSource>
   
    
  
    
</asp:Content>

