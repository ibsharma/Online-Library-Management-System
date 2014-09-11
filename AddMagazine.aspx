<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="Magazine, App_Web_2vag3bbd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 274px;
            height:30px;
        }
        .style5
        {
            width: 166px;
            height:30px;
        }
        .style6
        {
            width: 166px;
            height: 30px;
        }
        .style7
        {
            width: 274px;
            height: 30px;
        }
        .style8
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <table>
        <tr align="left">
            <td class="style6">
                </td>
            <td class="style7">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblPublisherAddress" runat="server" Text="Publisher Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPublisherAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblFrequency" runat="server" Text="Frequency"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtFrequency" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblDDNo" runat="server" Text="D D No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDDNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblAgent" runat="server" Text="Agent/Supplier"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAgent" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblSubscriptionRate" runat="server" Text="Subscription Rate"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtSubscriptionRate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblSubscriptionPeriod" runat="server" Text="Subscription Period"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSubscriptionPeriod" runat="server" 
                   ></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblEntryNo" runat="server" Text="Entry No"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtEntryNo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblVolumeNo" runat="server" Text="Volume No"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtVolumeNo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblIssueNo" runat="server" Text="Issue No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtIssueNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style5">
                <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="ddlDepartment" runat="server" Height="29px" Width="130px">
                    <asp:ListItem>IT/CP</asp:ListItem>
                    <asp:ListItem>EC</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>EE</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Maths</asp:ListItem>
                    <asp:ListItem>L&amp;CS</asp:ListItem>
                    <asp:ListItem>FT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="left">
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="left">
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" 
                    Height="26px" Width="130px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</center>
</asp:Content>

