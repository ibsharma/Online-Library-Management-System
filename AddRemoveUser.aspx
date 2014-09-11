<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="Add, App_Web_2vag3bbd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 149px;
            height: 30px;
        }
        .style5
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div>
<center>
<table style="margin-top:0px">
    <tr align="left">
        <td class="style4">
            </td>
        <td class="style5">
        </td>
    </tr>
    <tr align="left">
        <td class="style5">
            &nbsp;</td>
        <th class="style5">
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        </th>
    </tr>
    <tr align="left">
        <th class="style5">
            <asp:Label ID="lblAction" runat="server" Text="Action"></asp:Label>
        </th>
        <td class="style5">
            &nbsp;
            <asp:RadioButtonList ID="rblAction" runat="server" AutoPostBack="True" 
                CellPadding="1" CellSpacing="1" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                RepeatDirection="Horizontal" RepeatLayout="Flow" Width="150px">
                <asp:ListItem Selected="True">Add</asp:ListItem>
                <asp:ListItem>Remove</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr align="left">
        <th class="style5">
            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
        </th>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" AutoPostBack="True" 
                ontextchanged="txtUsername_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                ControlToValidate="txtUsername" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr align="left">
        <th class="style5" >
            <asp:Label ID="lblUserId" runat="server" Text="User Id"></asp:Label>
        </th>
        <td >
            <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserId" runat="server" 
                ControlToValidate="txtUserId" ErrorMessage="Enter User Id" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr align="left">
        <th class="style5">
            <asp:Label ID="lblRights" runat="server" Text="Rights"></asp:Label>
        </th>
        <td>
            <asp:CheckBox ID="cbAdminRights" runat="server" Text="Admin Rights" />
            <asp:CheckBox ID="cbLibrarianRights" runat="server" Checked="True" 
                Text="Librarian Rights" />
            <asp:CheckBox ID="cbMemeberRights" runat="server" Text="Member Rights" />
        </td>
    </tr>
    <tr align="left">
        <th class="style5">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </th>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr align="left">
        <th class="style5">
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
        </th>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="cvConfirmPassword" runat="server" 
                ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" 
                ErrorMessage="Password not matched" ForeColor="Red" 
                EnableClientScript="False"></asp:CompareValidator>
        </td>
    </tr>
    <tr align="left">
        <th class="style5">
            </th>
        <td>
            <asp:Button ID="btnExecute" runat="server" Text="Add User" 
                onclick="btnExecute_Click" />
        </td>
    </tr>
    </table>
</center>
</div>
</asp:Content>

