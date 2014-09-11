<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="GenerateBarcode, App_Web_2vag3bbd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 85%;
        }
        .style2
        {
            width: 189px;
            font-weight: 700;
        }
        .style3
        {
            height: 127px;
            width: 60px;
        }
        .style5
        {
            width: 24%;
        }
        .style6
        {
            width: 24%;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
            <center>
            <table>
            <tr align="left">
                <td class="style5"></td>
                <td>
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" 
                        
                        Text="It Will Generate 10 Continuous Barcodes Starting From Value Entered By User" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="style6">
                    <strong>Select Type Of Generator</strong></td>
                <td>
                    <asp:RadioButtonList ID="rblType" runat="server" AutoPostBack="True" 
                        Height="27px" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                        RepeatDirection="Horizontal" Width="155px">
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Multiple</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr align="left">
                <td class="style6">
                    Enter Starting Value</td>
                <td>
                    <asp:TextBox ID="txtRange1" runat="server" Height="23px" Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRange1" runat="server" 
                        ErrorMessage="Invalid Value" Font-Bold="True" ForeColor="Red" 
                        ControlToValidate="txtRange1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="left">
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnGB" runat="server" Text="Generate Barcode" 
                        onclick="btnGB_Click" />
                </td>
            </tr>
        </table>
        <div>
        <br /><br />
        <center>
        <table width="100%">
            <tr align="center">
                <td class="style3"><asp:Image ID="image1" runat="server" Visible="False"  /><br />
                    <asp:Label ID="i1" runat="server" Text=""></asp:Label>
                </td>
                <td class="style3"><asp:Image ID="image2" runat="server" Visible="False"/><br />
                <asp:Label ID="i2" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr align="center">
                <td class="style3"><asp:Image ID="image3" runat="server" Visible="False"/><br />
                <asp:Label ID="i3" runat="server" Text=""></asp:Label></td>
                <td class="style3"><asp:Image ID="image4" runat="server" Visible="False"/><br />
                <asp:Label ID="i4" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr align="center">
                <td class="style3"><asp:Image ID="image5" runat="server" Visible="False"/><br />
                <asp:Label ID="i5" runat="server" Text=""></asp:Label></td>
                <td class="style3" class="style3"><asp:Image ID="image6" runat="server" Visible="False" /><br />
                <asp:Label ID="i6" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr align="center">
                <td class="style3"><asp:Image ID="image7" runat="server" Visible="False"/><br />
                <asp:Label ID="i7" runat="server" Text=""></asp:Label></td>
                <td class="style3"><asp:Image ID="image8" runat="server" Visible="False"/><br />
                <asp:Label ID="i8" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr align="center">
                <td class="style3"><asp:Image ID="image9" runat="server" Visible="False"/><br />
                <asp:Label ID="i9" runat="server" Text=""></asp:Label></td>
                <td class="style3"><asp:Image ID="image10" runat="server" Visible="False"/><br />
                <asp:Label ID="i10" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
        </center>
        </div>
        </center>
</asp:Content>

