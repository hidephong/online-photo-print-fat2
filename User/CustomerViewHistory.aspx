<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CustomerViewHistory.aspx.cs" Inherits="OrderPhotoPL_Customer_CustomerViewHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="History"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="OrderID"  
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="OrderID" />
                        <asp:BoundField DataField="OrderName" HeaderText="OrderName" 
                            SortExpression="OrderName" />
                        <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                            SortExpression="OrderDate" />
                        <asp:BoundField DataField="PurchaseOrderNo" HeaderText="PurchaseOrderNo" 
                            InsertVisible="False" ReadOnly="True" SortExpression="PurchaseOrderNo" />
                        <asp:BoundField DataField="CreditCardNo" HeaderText="CreditCardNo" 
                            SortExpression="CreditCardNo" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="EmailSubject" HeaderText="EmailSubject" 
                            SortExpression="EmailSubject" />
                        <asp:BoundField DataField="EmailText" HeaderText="EmailText" 
                            SortExpression="EmailText" />
                        <asp:BoundField DataField="PrintSizes" HeaderText="PrintSizes" 
                            SortExpression="PrintSizes" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                        <asp:BoundField DataField="TimeToComplex" HeaderText="TimeToComplex" 
                            SortExpression="TimeToComplex" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

