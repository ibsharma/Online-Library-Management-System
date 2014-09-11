<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="Issue, App_Web_2vag3bbd" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 30px;
            height: 30px;
        }
        .style5
        {
            height: 30px;
        }
        .style6
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
    <center>
    <table>
        <tr align="left">
            <td class="style5">
                </td>
            <td colspan="2" class="style6">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblStudentId" runat="server" Text="Student Id"></asp:Label>
            </td>
            <td colspan="2" class="style6">
                <asp:TextBox ID="txtStudentId" runat="server" 
                    ontextchanged="txtStudentId_TextChanged" AutoPostBack="True" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvStudentId" runat="server" 
                    ErrorMessage="Enter Student Id" ForeColor="Red" 
                    ControlToValidate="txtStudentId"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblStudentName" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td colspan="2" class="style6">
                <asp:TextBox ID="txtStudentName" runat="server" ReadOnly="True" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblBookId" runat="server" Text="Book Id"></asp:Label>
            </td>
            <td colspan="2" class="style6">
                <asp:TextBox ID="txtBookId" runat="server" AutoPostBack="True" 
                    ontextchanged="txtBookId_TextChanged" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBookId" runat="server" 
                    ErrorMessage="Enter Book Id" ForeColor="Red" ControlToValidate="txtBookId"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblBookTitle" runat="server" Text="Book Title"></asp:Label>
            </td>
            <td colspan="2" class="style6">
                <asp:TextBox ID="txtBookTitle" runat="server" ReadOnly="True" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblIssueDate" runat="server" Text="Issue Date"></asp:Label>
            </td>
            <td colspan="2" class="style6">
                <asp:TextBox ID="txtIssueDate" runat="server" ReadOnly="True" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblDueDate" runat="server" Text="Due Date"></asp:Label>
            </td>
            <td colspan="2" class="style6">
                <asp:TextBox ID="txtDueDate" runat="server" Width="400px" 
                    ></asp:TextBox>
                <asp:CalendarExtender ID="txtDueDate_CalendarExtender" runat="server" 
                    TargetControlID="txtDueDate" Format="MM/dd/yyyy">
                </asp:CalendarExtender>
                <asp:Label ID="lblLoanPeriod" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                </td>
            <td class="style3">
                <asp:Button ID="btnIssue" runat="server" Text="Issue Book" 
                    onclick="btnIssue_Click" Width="150px" />
            </td>
            <td class="style6">
                <asp:Button ID="btnReset" runat="server" onclick="btnReset_Click" Text="Reset" 
                    Width="150px" />
            </td>
        </tr>
        </table>
        </center>
</asp:Content>

