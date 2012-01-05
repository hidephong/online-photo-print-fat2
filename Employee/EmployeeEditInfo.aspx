<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="EmployeeEditInfo.aspx.cs" Inherits="OrderPhotoPL_Employee_EmployeeEditInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width:100%;">
        <tr>
            <td style="width: 253px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="5">
                <asp:Label ID="Label1" runat="server" Text="Employee Infomation"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 253px">
                &nbsp;</td>
            <td align="center" colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 253px">
                &nbsp;</td>
            <td style="width: 128px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 35px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Hello  "></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 253px">
            </td>
            <td colspan="4" style="height: 20px">
            </td>
            <td style="height: 20px">
            </td>
        </tr>
        <tr>
            <td style="height: 18px; width: 253px">
            </td>
            <td colspan="4" style="height: 18px">
                &nbsp;</td>
            <td style="height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 253px">
                &nbsp;</td>
            <td align="justify" style="width: 128px">
                <asp:Label ID="Label2" runat="server" Text="Full Name :"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="TxtFullnam" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 253px">
                &nbsp;</td>
            <td align="justify" style="width: 128px">
                <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="TxtEmail" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 253px">
                &nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label4" runat="server" Text="Address :"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="TxtAddr" runat="server" Width="238px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 253px">
                &nbsp;</td>
            <td style="width: 128px">
                <asp:Label ID="Label5" runat="server" Text="Birth Day :"></asp:Label>
            </td>
            <td colspan="3">
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
                &nbsp;&nbsp;
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
            <td style="width: 253px">
                &nbsp;</td>
            <td style="width: 128px">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 253px">
                &nbsp;</td>
            <td style="width: 128px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td colspan="3">
                <asp:Button ID="Button2" runat="server" Text="Reset" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

