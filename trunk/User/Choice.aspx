<%@ Page Language="C#"  MasterPageFile="MasterHome.master" AutoEventWireup="true" CodeFile="Choice.aspx.cs" Inherits="OrderPhotoPL_Customer_Checkout"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ChoicePicture" runat="server">
            <table width="100%">
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:Label ID="Label3" runat="server" Text="Step 1: Choice Pictures"></asp:Label><br />
                        </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:DataList ID="dtlPhoto" runat="server" CellPadding="4" DataKeyField="CILID" ForeColor="#333333"
                            RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                            <ItemTemplate>
                                <br />
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/OrderPhotoOnline/User/Files/Customer/Photos/"+Eval("ImageLink") %>'
                                    Width="200px" /><br />
                                <asp:CheckBox ID="selcheck" runat="server" AutoPostBack="True" />

                        </ItemTemplate>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <AlternatingItemStyle BackColor="White" />
                            <ItemStyle BackColor="#EFF3FB" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Right" ImageUrl="~/User/Images/next_button.jpg"
                            OnClick="ImageButton1_Click1" Width="75px" /></td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 26px">
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="SelectSize" runat="server">
          <table style="width: 700px">
                <tr>
                    <td colspan="3" style="height: 30px">
                        <asp:Label ID="Label5" runat="server" Text="Step 2: Choice size and quantity"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:DataList ID="dlSelectSize" runat="server">
                            <ItemTemplate>
                                <table style="width: 657px">
                                   
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image2" runat="server" Width="100px" ImageUrl='<%# "/OrderPhotoOnline/User/Files/Customer/Photos/"+Eval("ImageLink") %>' /></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
                                            <asp:Table ID="Table1" runat="server" GridLines="Both">
                                       
      
           
        
                                            </asp:Table>
                                                   </td>
                                        <td>
                                        </td>
                                    </tr>
                                    
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td style="width: 128px; height: 26px">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/User/Images/black_back.jpg"
                            Width="75px" OnClick="ImageButton2_Click" /></td>
                    <td style="height: 26px">
                    
                  
                      
                        </td>
                    <td style="height: 26px">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageAlign="Right" ImageUrl="~/User/Images/next_button.jpg"
                            Width="75px" OnClick="ImageButton3_Click" /></td>
                </tr>
            </table>
        </asp:View>
  
        <asp:View ID="CheckOut" runat="server">
            &nbsp;<table style="width: 700px; text-align: right;">
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:Label ID="Label9" runat="server" Text="Checkout"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 21px">
                         <asp:DataList ID="dlCheckout" runat="server">
                            <ItemTemplate>
                                <table style="width: 657px">
                                   
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image2" runat="server" Width="100px" ImageUrl='<%# "/OrderPhotoOnline/User/Files/Customer/Photos/"+Eval("ImageLink") %>' /></td>
                                        <td>
                                            <asp:Table ID="Table2" runat="server" GridLines="Both">
                                       
      
           
        
                                            </asp:Table>
                                                   </td>
                                        <td>
                                        </td>
                                    </tr>
                                    
                                </table>
                            </ItemTemplate>
                        </asp:DataList><table style="width: 278px">
                            <tr>
                                <td align="center" colspan="2">
                                    Summary</td>
                                <td style="width: 8px">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 18px">
                                    Qty Photo:</td>
                                <td style="height: 18px">
                                    2</td>
                                <td style="width: 8px; height: 18px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Qty Print:</td>
                                <td>
                                    10</td>
                                <td style="width: 8px">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 18px">
                                    Amount</td>
                                <td style="height: 18px">
                                    $1.2</td>
                                <td style="width: 8px; height: 18px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tax</td>
                                <td>
                                    $0.12</td>
                                <td style="width: 8px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Total</td>
                                <td>
                                    $1.32</td>
                                <td style="width: 8px">
                                </td>
                            </tr>
                        </table>
                      
                    </td>
                </tr>
                <tr><td style="width: 128px; height: 26px">
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/User/Images/black_back.jpg"
                            Width="75px" /></td>
                    <td style="height: 26px"> 
                    </td>
                    <td style="height: 26px">
                        <asp:ImageButton ID="ImageButton5" runat="server" ImageAlign="Right" ImageUrl="~/User/Images/next_button.jpg"
                            Width="75px" OnClick="ImageButton5_Click" /></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="Finish" runat="server">
            &nbsp;<table style="width: 696px">
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:Label ID="Label11" runat="server" Text="Thank you!"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 21px">
                      
                    </td>
                </tr>
                <tr>
                    <td style="width: 227px; height: 26px">
                    </td>
                    <td style="height: 26px">
                        <asp:Button ID="Button6" runat="server" PostBackUrl="~/User/Default.aspx" Text="Finish"  /></td>
                    <td style="height: 26px">
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
   
</asp:Content>

