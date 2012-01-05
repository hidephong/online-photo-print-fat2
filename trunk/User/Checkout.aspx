<%@ Page Language="C#"  MasterPageFile="MasterHome.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="OrderPhotoPL_Customer_Checkout"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ChoicePicture" runat="server">
            <table width="100%">
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:Label ID="Label3" runat="server" Text="Step 1: Choice Pictures"></asp:Label><br />
                        <asp:ImageButton ID="ImageButton2" runat="server" /></td>
                </tr>
                <tr width="100%">
                    <td colspan="3" style="height: 21px">
                        <asp:DataList ID="dtlPhoto" runat="server" CellPadding="4" DataKeyField="CILID" ForeColor="#333333"
                            RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                            <ItemTemplate>
                                <br />
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/OrderPhotoOnline/User/Files/Customer/Photos/"+Eval("ImageLink") %>'
                                    Width="200px" /><br />
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/User/Images/add.png"
                                    OnClick="ImageButton1_Click" />
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <AlternatingItemStyle BackColor="White" />
                            <ItemStyle BackColor="#EFF3FB" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 26px">
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="SelectSize" runat="server">
            &nbsp;<table style="width: 700px">
                <tr>
                    <td colspan="3" style="height: 30px">
                        <asp:Label ID="Label5" runat="server" Text="Step 2: Choice Size"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="width: 128px; height: 26px">
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Back" /></td>
                    <td style="height: 26px">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Next" /></td>
                    <td style="height: 26px">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="ChoiceQuantity" runat="server">
            &nbsp;<table style="width: 700px">
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:Label ID="Label7" runat="server" Text="Step 3: Choice quantity"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px; height: 26px">
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Back" /></td>
                    <td style="height: 26px">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Next" /></td>
                    <td style="width: 43px; height: 26px">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="CheckOut" runat="server">
            &nbsp;<table style="width: 700px">
                <tr>
                    <td colspan="3" style="height: 21px">
                        <asp:Label ID="Label9" runat="server" Text="Checkout"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 140px; height: 26px">
                        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Back" /></td>
                    <td style="height: 26px">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Next" /></td>
                    <td style="height: 26px">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
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
                        <asp:Button ID="Button6" runat="server" PostBackUrl="thankyou.aspx" Text="Finish" /></td>
                    <td style="height: 26px">
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
   
</asp:Content>

