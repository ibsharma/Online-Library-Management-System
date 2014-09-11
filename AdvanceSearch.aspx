<%@ page title="" language="C#" masterpagefile="~/AllUser.master" autoeventwireup="true" inherits="AdvanceSearch, App_Web_2vag3bbd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
           margin-left:20%;
        }
        .style6
        {            height: 30px;
        }
        .style7
        {
            text-align:left;
            width: 10px;
        }
        .style9
        {
            color: #FF0000;
        }
        .style10
        {
            width: 15%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
    <table class="style5" align="center">
        <tr>
            <td class="style10" align="left">
                <asp:Label ID="lblTitle" runat="server" Text="Book Title"></asp:Label>
            </td>
            <td class="style7" align="left">
                <asp:TextBox ID="txtTitle" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblEgTitle" runat="server" ForeColor="Red" 
                    Text="(eg:&quot;Java&quot;)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10" align="left">
                <asp:Label ID="lblAuthor" runat="server" Text="Book Author"></asp:Label>
            </td>
            <td class="style7" align="left">
                <asp:TextBox ID="txtAuthor" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblEgAuthor" runat="server" ForeColor="Red" 
                    Text="(eg:&quot;Herbert Schildt&quot;)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10" align="left">
                <asp:Label ID="lblPublisher" runat="server" Text="Book Publisher"></asp:Label>
            </td>
            <td class="style7" align="left">
                <asp:TextBox ID="txtPublisher" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblEgPublisher" runat="server" ForeColor="Red" 
                    Text="(eg:&quot;Tata McGraw Hills&quot;)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10" align="left">
                <asp:Label ID="lblISBN" runat="server" Text="ISBN"></asp:Label>
            </td>
            <td class="style7" align="left">
                <asp:TextBox ID="txtISBN" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblEgISBN" runat="server" ForeColor="Red" 
                    Text="(eg:&quot;81-265-0033-6&quot;)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10" align="left">
                <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
            </td>
            <td class="style7" align="left">
                <asp:DropDownList ID="ddlDepartment" runat="server" Width="200px">
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
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style6" align="left" colspan="2">
                <span class="style9">*</span><asp:Label ID="lblMsg1" runat="server" 
                    ForeColor="Red" Text="Any one field must be selected"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10" align="center">
                <asp:Button ID="btnSearch" runat="server" Text="Search" 
                    onclick="btnSearch_Click" />
            </td>
            <td class="style7" align="center">
                <asp:Button ID="btnReset" runat="server" Text="Reset" 
                    onclick="btnReset_Click" />
            </td>
        </tr>
        </table>
    </div>
    <div style={width:100%;margin-botton:50px;}>
    <center><h1 style="margin-left:-9%"><asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label></h1><br /></center>
    <asp:GridView ID="gvAdvanceSearch" runat="server" HorizontalAlign="Center" 
            OnPageIndexChanging="gridView_PageIndexChanging" AllowPaging="True" 
        CellPadding="3" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" 
        AlternatingRowStyle-HorizontalAlign="Left" EditRowStyle-HorizontalAlign="Left" 
        SelectedRowStyle-HorizontalAlign="Left" RowStyle-HorizontalAlign="Left" 
        HeaderStyle-HorizontalAlign="Left">
        <AlternatingRowStyle />

<EditRowStyle HorizontalAlign="Left"></EditRowStyle>

        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066"/>
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <%--<SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
    </asp:GridView>
    
    </div>
</asp:Content>

