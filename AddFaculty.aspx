<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="Faculty, App_Web_4sqkqmot" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 123px;
    }
    .style5
    {
        width: 213px;
    }
    .style7
    {
        width: 96px;
    }
        .style8
        {
            width: 123px;
            height: 30px;
        }
        .style9
        {
            width: 213px;
            height: 30px;
        }
        .style10
        {
            width: 96px;
            height: 30px;
        }
        .style11
        {
            height: 30px;
        }
        .style12
        {
            width: 123px;
            height: 60px;
        }
        .style13
        {
            width: 213px;
            height: 60px;
        }
        .style14
        {
            width: 96px;
            height: 60px;
        }
        .style15
        {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <table>
    <tr align="left">
        <td class="style8">
            </td>
        <td class="style9">
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="style10">
            </td>
        <td class="style11">
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
        </td>
    </tr>
    <tr align="left">
        <td class="style8">
            <asp:Label ID="lblMemberID" runat="server" Text="MemberID"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="txtMemberID" runat="server" AutoPostBack="True" 
                ontextchanged="txtMemberID_TextChanged"></asp:TextBox>
        </td>
        <td class="style10">
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr align="left">
        <td class="style8">
            <asp:Label ID="lblDesignation" runat="server" Text="Designation"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
        </td>
        <td class="style10">
            <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
            <asp:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" 
                TargetControlID="txtDOB">
            </asp:CalendarExtender>
        </td>
    </tr>
    <tr align="left">
        <td class="style8">
            <asp:Label ID="lblDOJ" runat="server" Text="Date OF Joining"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="txtDOJ" runat="server"></asp:TextBox>
            <asp:CalendarExtender ID="txtDOJ_CalendarExtender" runat="server" 
                TargetControlID="txtDOJ">
            </asp:CalendarExtender>
        </td>
        <td class="style10">
            <asp:Label ID="lblBG" runat="server" Text="BloodGroup"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="txtBG" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr align="left">
        <td class="style12">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="57px" 
                Width="202px"></asp:TextBox>
        </td>
        <td class="style14">
            <asp:Label ID="lblPhNo" runat="server" Text="Phone No"></asp:Label>
        </td>
        <td class="style15">
            <asp:TextBox ID="txtPhNo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr align="left">
        <td class="style4">
            <asp:Label ID="Label1" runat="server" Text="EmailID"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
        </td>
        <td class="style7">
            <asp:Label ID="lblMemberType" runat="server" Text="MemberType"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlMemberType" runat="server">
                <asp:ListItem>Staff</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr align="left">
        <td class="style4">
            <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
        </td>
        <td class="style5">
            <asp:DropDownList ID="ddlDepartment" runat="server" Height="32px" Width="130px">
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>CP</asp:ListItem>
                <asp:ListItem>EE</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>EC</asp:ListItem>
                <asp:ListItem>FT</asp:ListItem>
                <asp:ListItem>CE</asp:ListItem>
                <asp:ListItem>MA</asp:ListItem>
                <asp:ListItem>AE</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr align="left">
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr align="left">
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            <asp:Button ID="btnAdd" runat="server" Text="Add" onclick="btnAdd_Click" 
                Height="26px" Width="130px" />
        </td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    </table>
</center>
</asp:Content>