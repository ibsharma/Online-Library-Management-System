<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="Books, App_Web_2vag3bbd" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height:30px;
        }
        .style3
        {
            height:30px;
            width: 249px;
        }
        .style4
        {
            height: 30px;
            width: 249px;
        }
        .style10
        {
            height:30px;
            }
        .style12
        {
            height:30px;
            width: 109px;
        }
        .style13
        {
            height: 30px;
            width: 109px;
        }
        .style14
        {
            width: 213px;
            height:30px;
        }
        .style15
        {
            height: 30px;
            width: 213px;
        }
        .style16
        {
            width: 249px;
            height: 30px;
        }
        .style17
        {
            height: 30px;
        }
        .style19
        {
            width: 241px;
            height: 30px;
        }
        .style20
        {
            width: 241px;
            height:30px;
        }
        .style21
        {
            height: 30px;
            width: 241px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <table>
            <tr align="left">
                <td class="style16">
                </td>
                <td class="style17" colspan="2">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style19">
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:Label ID="lblBookID" runat="server" Text="Book ID"></asp:Label>
                </td>
                <td class="style20">
                    <asp:TextBox ID="txtBookID" runat="server" AutoPostBack="True" 
                        ontextchanged="txtBookID_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvBookID" runat="server" 
                        ControlToValidate="txtBookID" ErrorMessage="Enter BookID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:Label ID="lblRack" runat="server" Text="Rack"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtRack" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
                </td>
                <td class="style20">
                    <asp:DropDownList ID="ddlDepartment" runat="server">
                        <asp:ListItem>ITCP</asp:ListItem>
                        <asp:ListItem>EC</asp:ListItem>
                        <asp:ListItem>EE</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>AE</asp:ListItem>
                        <asp:ListItem>FT</asp:ListItem>
                        <asp:ListItem>CE</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align="left">
                <td class="style4">
                    <asp:Label ID="lblClassificationNo" runat="server" Text="Classification No."></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txtClassification" runat="server"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:Label ID="lblAuthor" runat="server" Text="Author"></asp:Label>
                </td>
                <td class="style21">
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:Label ID="lblEdition" runat="server" Text="Edition"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtEdition" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:Label ID="lblcopies" runat="server" Text="No. of copies"></asp:Label>
                </td>
                <td class="style20">
                    <asp:TextBox ID="txtCopies" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:Label ID="lblPublication" runat="server" Text="Publication"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtPublication" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:Label ID="lblPublicationplace" runat="server" Text="Publication place"></asp:Label>
                </td>
                <td class="style20">
                    <asp:TextBox ID="txtpublicationplace" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:Label ID="lblPages" runat="server" Text="Pages"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtPages" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:Label ID="lblISBN" runat="server" Text="ISBN No."></asp:Label>
                </td>
                <td class="style20">
                    <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:Label ID="lblPurchasedate" runat="server" Text="Purchase date"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtPurchase" runat="server"></asp:TextBox>
                    
                    <asp:CalendarExtender ID="txtPurchase_CalendarExtender" runat="server" 
                        TargetControlID="txtPurchase" DaysModeTitleFormat="dd/MM/yyyy" Format="dd/MM/yyyy">
                    </asp:CalendarExtender>
                    
                </td>
                <td class="style12">
                    <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
                </td>
                <td class="style20">
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:Label ID="lblBillno" runat="server" Text="Bill No."></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtBillNo" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:Label ID="lblSupplier" runat="server" Text="Supplier"></asp:Label>
                </td>
                <td class="style20">
                    <asp:TextBox ID="txtSupplier" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:Label ID="lblRemark" runat="server" Text="Remarks"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="txtRemark" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:Label ID="lblMaterials" runat="server" Text="Materials"></asp:Label>
                </td>
                <td class="style20">
                    <asp:CheckBox ID="cbCD" runat="server" Text="CD" />
                    <asp:MutuallyExclusiveCheckBoxExtender ID="cbCD_MutuallyExclusiveCheckBoxExtender" 
                        runat="server" TargetControlID="cbCD">
                    </asp:MutuallyExclusiveCheckBoxExtender>
                </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                </td>
                <td class="style14">
                    <asp:CheckBox ID="cbReference" runat="server" Text="Reference" />
                </td>
                <td class="style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style20">
                    <asp:CheckBox ID="cbDVD" runat="server" Text="DVD" />
                    <asp:MutuallyExclusiveCheckBoxExtender ID="cbDVD_MutuallyExclusiveCheckBoxExtender" 
                        runat="server" TargetControlID="cbDVD">
                    </asp:MutuallyExclusiveCheckBoxExtender>
                    </td>
            </tr>
            <tr align="left">
                <td class="style3">
                    &nbsp;</td>
                <td class="style14">
                    <asp:CheckBox ID="cbStatus" runat="server" Text="Status" />
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style3">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style3">
                    &nbsp;</td>
                <td class="style14">
                    <asp:Button ID="btnAdd" runat="server" CssClass="style10" Height="29px" 
                        onclick="btndone_Click" Text="Add" Width="79px" EnableViewState="False" />
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;</td>
            </tr>
            </table>
</center>
</asp:Content>