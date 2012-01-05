<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CustomerRegister.aspx.cs" Inherits="OrderPhotoPL_CustomerRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width:100%;">
        <tr>
            <td style="width: 48px">
                &nbsp;</td>
            <td align="center" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4" 
                style="font-size: xx-large; background-color: #FFFFFF; color: #FF0066;" 
                valign="baseline">
                Customer Register<br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" valign="baseline">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4" valign="baseline">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 48px">
                &nbsp;</td>
            <td valign="middle" style="width: 216px">
                User Name :</td>
            <td>
                <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtUser" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 48px">
                &nbsp;</td>
            <td valign="middle" style="width: 216px">
                First Name :</td>
            <td>
                <asp:TextBox ID="TxtFnam" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TxtFnam" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 48px">
            </td>
            <td style="height: 23px; width: 216px;">
                Last Name :</td>
            <td style="height: 23px">
                <asp:TextBox ID="TxtLnam" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtLnam" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 48px">
                &nbsp;</td>
            <td style="height: 23px; width: 216px;">
                Date Of Birth :</td>
            <td style="height: 23px">
                <asp:DropDownList ID="DdrMon" runat="server">
                    <asp:ListItem Value="1">[Month]</asp:ListItem>
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
                    <asp:ListItem Value="1">[Day]</asp:ListItem>
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
                &nbsp;
                <asp:DropDownList ID="DdrYear" runat="server">
                </asp:DropDownList>
            </td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 48px">
                &nbsp;</td>
            <td style="height: 23px; width: 216px;">
                Gender :</td>
            <td style="height: 23px">
                <asp:RadioButton ID="RbtMale" runat="server" GroupName="hehe" 
                    Text="Male" Checked="True" />
                <asp:RadioButton ID="RbtFemale" runat="server" GroupName="hehe" 
                    Text="Female" />
            </td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 48px">
                &nbsp;</td>
            <td style="height: 23px; width: 216px;">
                Phone Number:</td>
            <td style="height: 23px">
                <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TxtPhone" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 48px">
                </td>
            <td style="height: 23px; width: 216px;">
                Email :</td>
            <td style="height: 23px">
                <asp:TextBox ID="TxtEmai" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TxtEmai" ErrorMessage="*" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 23px">
                </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 48px">
                &nbsp;</td>
            <td style="height: 23px; width: 216px;">
                Address :</td>
            <td style="height: 23px">
                <asp:TextBox ID="TxtAddr" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TxtAddr" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 48px">
                &nbsp;</td>
            <td style="height: 23px; width: 216px;">
                &nbsp;</td>
            <td style="height: 23px">
                &nbsp;</td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 48px">
                &nbsp;</td>
            <td colspan="2" style="height: 23px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" />
            </td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

