<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="Return, App_Web_4sqkqmot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 171px;
        }
        .style6
        {
            height: 29px;
            width: 171px;
        }
        .style7
        {
            height: 29px;
        }
        .style14
        {
            width: 171px;
            font-weight: bold;
            text-decoration: underline;
        }
        .style15
        {
            height: 30px;
            width: 171px;
        }
        .style16
        {
            height: 30px;
        }
        .style17
        {
            width: 200px;
        }
        .style18
        {
            width: 200px;
            font-weight: bold;
            text-decoration: underline;
        }
        .style20
        {
            height: 30px;
            width: 200px;
        }
        .style21
        {
            height: 29px;
            width: 200px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <table>
        <tr align="left">
            <td class="style4" height="30px">
                &nbsp;</td>
            <td colspan="2" height="30px">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="style4" height="30px">
                <asp:Label ID="lblbookid" runat="server" Text="Book ID"></asp:Label>
            </td>
            <td colspan="2" height="30px">
                <asp:TextBox ID="txtbookid" runat="server" AutoPostBack="True" 
                    ontextchanged="txtbookid_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBookID" runat="server" 
                    ControlToValidate="txtbookid" ErrorMessage="Enter Book ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="left">
            <td class="style4" height="30px">
                <asp:Label ID="lblstudentid" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td colspan="2" height="30px">
                <asp:TextBox ID="txtstudentid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style4" height="30px">
                <asp:Label ID="lblfinestatus" runat="server" Text="Fine Status"></asp:Label>
            </td>
            <td colspan="2" height="30px">
                <asp:TextBox ID="txtFineStatus" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style14" height="30px">
                Information Panel&nbsp;:</td>
            <td colspan="2" height="30px">
                &nbsp;</td>
        </tr>
        <tr align="left">
            <td class="style15">
                Date Of Issue was&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td colspan="2" class="style16">
                <asp:Label ID="lbldoi" runat="server"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="style4" height="30px">
                No Of&nbsp; Days Overhead&nbsp;&nbsp;&nbsp;</td>
            <td colspan="2" height="30px">
                <asp:Label ID="lblndo" 
                    runat="server"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="style15">
                Fine To Be Collected&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td colspan="2" class="style16">
                <asp:Label 
                    ID="lblftbc" runat="server"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="style15">
                <asp:Label ID="lblReceiptNo" runat="server" Text="Receipt No." Visible="False"></asp:Label>
            </td>
            <td colspan="2" class="style16">
                <asp:TextBox ID="txtReceiptNo" runat="server" CausesValidation="True" 
                    Enabled="False" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style15">
                <asp:Button ID="btnreturn" runat="server" Text="Return" Width="100px" 
                    Height="25px" onclick="btnreturn_Click" />
            </td>
            <td width="150px" class="style16">
                <asp:Button ID="btnrenew" runat="server" Text="Renew" Width="100px" 
                    Height="25px" onclick="btnrenew_Click" />
            </td>
            <td class="style16">
                <asp:Button ID="btnreset" runat="server" Text="Reset" style="margin-left: 0px" 
                    Width="100px" Height="25px" onclick="btnreset_Click" />
            </td>
        </tr>
        </table>
</center>
</asp:Content>

