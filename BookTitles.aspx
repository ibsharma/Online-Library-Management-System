<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="BookTitles, App_Web_2vag3bbd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 34px;
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
        <th class="style3">Select Department</th>
        <td class="style3">
            <asp:DropDownList ID="ddlDepartment" runat="server" Width="200px" Height="30px">
                    <asp:ListItem Value="ITCP" Selected="True">Information Technology</asp:ListItem>
                    <asp:ListItem Value="ITCP">Computer Engg.</asp:ListItem>
                    <asp:ListItem Value="EE">Electrical Engg.</asp:ListItem>
                    <asp:ListItem Value="EC">Electronics &amp; Communication</asp:ListItem>
                    <asp:ListItem Value="ME">Mechanical Engg.</asp:ListItem>
                    <asp:ListItem Value="AE">Automobile Engg.</asp:ListItem>
                    <asp:ListItem Value="FT">Food Processing Tech.</asp:ListItem>
                    <asp:ListItem Value="CE">Civil Engg.</asp:ListItem>
                    <asp:ListItem Value="MA">Maths</asp:ListItem>
                    <asp:ListItem Value="L&amp;CS">Language &amp;Comm Skills</asp:ListItem>
                    <asp:ListItem Value="All">All</asp:ListItem>
                </asp:DropDownList>
        </td>
    </tr>
    <tr align="left">
        <th></th>
        <td>
            <asp:Button ID="btnGenerate" runat="server" Height="22px" Text="Generate" 
                Width="94px" onclick="btnGenerate_Click" />
        </td>
    </tr>
</table>
<br />
    <div>
    <center>
    <table>
        <tr>
            <td class="style16"></td>
            <td class="style15">
                <asp:Button ID="btnPrint" runat="server" Text="Print Report" 
                    onclick="btnPrint_Click" Visible="False" />
            </td>
        </tr>
        <TR>
            <td colspan="2">
        <asp:GridView ID="gvTitles" runat="server" 
            HorizontalAlign="Center" Visible="False">
            <RowStyle HorizontalAlign="Left" />
</asp:GridView>   
</td>
</TR>
</table>     
    </div>
</center>
</asp:Content>


