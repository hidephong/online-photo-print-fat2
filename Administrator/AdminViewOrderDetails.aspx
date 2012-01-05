<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="AdminViewOrderDetails.aspx.cs" Inherits="OrderPhotoPL_Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%;">
        <tr>
            <td style="height: 23px">
                </td>
            <td style="height: 23px">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="BtnSearch" runat="server" Text="Search" />
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>By Customer Name</asp:ListItem>
                    <asp:ListItem>By OrderID</asp:ListItem>
                    <asp:ListItem>By Date</asp:ListItem>
                    <asp:ListItem>By CustomerID</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Order Details"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="OrderID,CusID"  
                    GridLines="Horizontal" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" >
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="OrderID" />
                        <asp:BoundField DataField="OrderName" HeaderText="OrderName" 
                            SortExpression="OrderName" />
                        <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                            SortExpression="OrderDate" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                            SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" 
                            SortExpression="LastName" />
                        <asp:BoundField DataField="CusID" HeaderText="CusID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="CusID" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                            CellPadding="2" ForeColor="Black" GridLines="None">
                            <FooterStyle BackColor="Tan" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:DetailsView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

