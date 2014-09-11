<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="ReturnReport, App_Web_2vag3bbd" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Return Reports</title>
    <style type="text/css">
        .style4
        {
            width: 207px;
        }
        .style5
        {
            width: 291px;
            height: 30px;
        }
        .style6
        {
            width: 80px;
            height: 30px;
        }
        .style7
        {
            width: 207px;
            height: 30px;
        }
        .style8
        {
            height: 30px;
        }
        .style9
        {
            width: 207px;
            height: 31px;
        }
        .style10
        {
            height: 31px;
        }
        .style15
        {
            height: 50px;
        }
        .style16
        {
            height: 50px;
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <table>
        <tr align="left">
            <td class="style4">
                <asp:Label ID="lblType" runat="server" Text="Select Type Of Report"></asp:Label>
            </td>
            <td colspan="4">
                <asp:RadioButtonList ID="rblReportType" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="rblReportType_SelectedIndexChanged" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Daily</asp:ListItem>
                    <asp:ListItem>Weekly</asp:ListItem>
                    <asp:ListItem>Monthly</asp:ListItem>
                    <asp:ListItem>Yearly</asp:ListItem>
                    <asp:ListItem>Till Date</asp:ListItem>
                    <asp:ListItem>Customize</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr align="left">
            <td class="style7">
                <asp:Label ID="lblDate1" runat="server" Text="Enter Date" Visible="False"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtDate1" runat="server" Visible="False"></asp:TextBox>
                <asp:CalendarExtender ID="txtDate1_CalendarExtender" runat="server" 
                    TargetControlID="txtDate1" Format="MM/dd/yyyy">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="rfvDate" runat="server" 
                    ControlToValidate="txtDate1" Enabled="False" ErrorMessage="Enter The Date"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                <asp:Label ID="lblDate2" runat="server" Text="Enter Date" Visible="False"></asp:Label>
                </td>
            <td class="style8">
                <asp:TextBox ID="txtDate2" runat="server" style="margin-left: 0px" 
                    Visible="False"></asp:TextBox>
                <asp:CalendarExtender ID="txtDate2_CalendarExtender" runat="server" 
                    TargetControlID="txtDate2" Format="MM/dd/yyyy">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="rfvEndDate" runat="server" 
                    ControlToValidate="txtDate2" Enabled="False" ErrorMessage="Enter The Date"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr align="left">
            <td class="style9">
                <asp:Label ID="lblMonth" runat="server" Text="Select Month" Visible="False"></asp:Label>
            </td>
            <td colspan="4" class="style10">
                <asp:DropDownList ID="ddlMonth" runat="server" Height="25px" Width="153px" 
                    Visible="False">
                    <asp:ListItem Selected="True" Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">February</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">Decemeber</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr align="left">
            <td class="style7">
                <asp:Label ID="lblYear" runat="server" Text="Enter Year" Visible="False"></asp:Label>
            </td>
            <td colspan="4" class="style8">
                <asp:TextBox ID="txtYear" runat="server" MaxLength="4" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvYear" runat="server" 
                    ControlToValidate="txtYear" Enabled="False" ErrorMessage="Enter The Year"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="left">
            <td class="style4">
                &nbsp;</td>
            <td colspan="4">
                <asp:Button ID="btnGenerateReport" runat="server" Text="Generate Report" 
                    onclick="btnGenerateReport_Click" Visible="False" />
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
    </table><br />
    <div>
    <center>
    <table>
        <tr>
            <td class="style16"><h1><asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label></h1></td>
            <td class="style15">
                <asp:Button ID="btnPrint" runat="server" Text="Print Report" 
                    onclick="btnPrint_Click" Visible="False" />
            </td>
        </tr>
        <TR>
            <td colspan="2">
    <asp:GridView ID="gvReturnReport" runat="server" RowStyle-HorizontalAlign="Left" 
                    HorizontalAlign="Center">
        <RowStyle />
    </asp:GridView>
    </td>
    </TR>
    </table>
    </center>
    </div>
    </center>
</asp:Content>
