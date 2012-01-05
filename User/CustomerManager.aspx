<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CustomerManager.aspx.cs" Inherits="OrderPhotoPL_Customer_CustomerManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="Label9" runat="server" Text="Customer Manger"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
            </td>
            <td style="width: 272px">
                <asp:TextBox ID="TxtUserName" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
            </td>
            <td style="width: 272px">
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Label3" runat="server" Text="First Name :"></asp:Label>
            </td>
            <td style="width: 272px">
                <asp:TextBox ID="TxtFname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Label4" runat="server" Text="Last Name :"></asp:Label>
            </td>
            <td style="width: 272px">
                <asp:TextBox ID="TxtLName" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Labe" runat="server" Text="Phone number :"></asp:Label>
            </td>
            <td style="width: 272px">
                <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px; height: 26px;">
                </td>
            <td style="width: 280px; height: 26px;">
                <asp:Label ID="Label6" runat="server" Text="Email :"></asp:Label>
            </td>
            <td style="width: 272px; height: 26px;">
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            </td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Label7" runat="server" Text="Birth Day :"></asp:Label>
            </td>
            <td style="width: 272px">
                <asp:DropDownList ID="DdrMon" runat="server">
                    <asp:ListItem>[Month]</asp:ListItem>
                    <asp:ListItem Value="1">Jan</asp:ListItem>
                    <asp:ListItem Value="2">Feb</asp:ListItem>
                    <asp:ListItem Value="3">Mar</asp:ListItem>
                    <asp:ListItem Value="4">Apr</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">Jun</asp:ListItem>
                    <asp:ListItem Value="7">Jul</asp:ListItem>
                    <asp:ListItem Value="8">Aug</asp:ListItem>
                    <asp:ListItem Value="9">Sep</asp:ListItem>
                    <asp:ListItem Value="10">Oct</asp:ListItem>
                    <asp:ListItem Value="11">Nov</asp:ListItem>
                    <asp:ListItem Value="12">Dec</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                <asp:DropDownList ID="DdrDay" runat="server">
                    <asp:ListItem>[Day]</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DdrYear" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Label8" runat="server" Text="Gender :"></asp:Label>
            </td>
            <td style="width: 272px">
                <asp:RadioButton ID="RbtMale" runat="server" GroupName="hehe" 
                    Text="Male" Checked="True" />
                <asp:RadioButton ID="RbtFemale" runat="server" GroupName="hehe" 
                    Text="Female" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label></td>
            <td style="width: 272px">
                &nbsp;<asp:TextBox ID="txtAddress" runat="server" Width="253px"></asp:TextBox></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 58px">
                &nbsp;</td>
            <td style="width: 280px">
                <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" 
                    style="height: 26px" />
            </td>
            <td style="width: 272px">
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

