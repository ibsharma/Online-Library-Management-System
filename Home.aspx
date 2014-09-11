<%@ page title="" language="C#" masterpagefile="~/AllUser.master" autoeventwireup="true" inherits="Home, App_Web_2vag3bbd" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 29px;
        }
        .list
        {
            list-style-type:none;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<div style="height: 345px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
    <div style="width: 100%; height: 85px">
    <table align="center" style={margin-top:"auto"}>
        <tr>
        <td align="left" class="style5">

       

            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:AdRotator ID="AdRotator1" runat="server" Height="100" Width="400"
                AdvertisementFile="~/Adrotators.xml" AlternateTextField="Image loading...." />
            <br />
            <br />
            <br />
            <asp:TextBox ID="txtSearch" runat="server" Font-Size="Small" 
                AutoCompleteType="Search" Width="577px" 
                Height="28px" BorderColor="Black" BorderStyle="Solid" 
                ontextchanged="txtSearch_TextChanged"></asp:TextBox>
            <asp:AutoCompleteExtender runat="server" ID="txtSearch_AutoCompleteExtender" TargetControlID="txtSearch"
            Enabled="true" ServicePath="" MinimumPrefixLength="1" DelimiterCharacters=""
            ServiceMethod="GetCompletionList2" UseContextKey="true" CompletionListElementID="list" CompletionInterval="1">
            </asp:AutoCompleteExtender>
            &nbsp;
            </td>
        <td>
            &nbsp;</td>      
        
    </tr>
    <tr>
        <td align=center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" Text="Search" 
                onclick="btnSearch_Click" Height="34px" Width="188px" 
                BorderStyle="Groove"/>
       
        
            &nbsp;
       
        
            <asp:LinkButton align="bottom" ID="lnkbtnAdvanceSearch" runat="server" 
                            onclick="lnkbtnAdvanceSearch_Click" Font-Underline="True">Advanced Search</asp:LinkButton>
            <br />
            <br />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            </td>
    </tr>
    </table>
</div>

    <h1 style="margin-left:-9%"></h1></center><br />
    
        
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
<asp:GridView ID="gvSearch" runat="server" HorizontalAlign="Center" CellPadding="5" 
        OnPageIndexChanging="gridView_PageIndexChanging" AllowPaging="True" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="3px" 
        AlternatingRowStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" 
        RowStyle-HorizontalAlign="Left" PageSize="20" CellSpacing="3" 
        Font-Names="Batang" Font-Size="Small">
    <AlternatingRowStyle Font-Names="Microsoft Sans Serif" Font-Overline="False" 
        ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
    <EditRowStyle BorderColor="#CCCCCC" BorderStyle="Groove" ForeColor="Black" 
        HorizontalAlign="Left" VerticalAlign="Middle" />
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" HorizontalAlign="Center" VerticalAlign="Middle" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <%--<SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
    </asp:GridView>
<br />
</div>
</div>
</asp:Content>