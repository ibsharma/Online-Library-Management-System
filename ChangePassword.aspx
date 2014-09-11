<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="ChangePassword, App_Web_2vag3bbd" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 30px;
        }
        .style4
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <table>
        <tr align="left">
            <td class="style3">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr align="left">
            <td class="style3">
                </td>
            <th class="style3">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </th>
        </tr>
        <tr align="left">
            <th class="style3">
                <asp:Label ID="lblCurrentPass" runat="server" Text="Current Password"></asp:Label>
            </th>
            <td class="style3">
                <asp:TextBox ID="txtCurrentPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCurrentPass" runat="server" 
                    ControlToValidate="txtCurrentPass" ErrorMessage="Enter Current Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="left">
            <th class="style3">
                <asp:Label ID="lblNEwPass" runat="server" Text="New Password"></asp:Label>
            </th>
            <td class="style3">
                <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" 
                    style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNewPass" runat="server" 
                    ControlToValidate="txtNewPass" ErrorMessage="Enter New Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="left">
            <th class="style3">
                <asp:Label ID="lblConfirmPass" runat="server">Confirm Password</asp:Label>
            </th>
            <td class="style3">
                <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" ></asp:TextBox>
                <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtNewPass" 
                    ControlToValidate="txtConfirmPass" ErrorMessage="Password not matched" 
                    ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr align="left">
            <td class="style13">
                </td>
            <td class="style6">
                <asp:Button ID="btnChangePass" runat="server" Text="Change Password" 
                    onclick="btnChangePass_Click" />
            </td>
        </tr>
        </table>
</center>
</asp:Content>

