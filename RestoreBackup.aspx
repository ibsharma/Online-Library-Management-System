<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="RestoreBackup, App_Web_2vag3bbd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
        <table>
            <tr align="left">
                <td class="style5" style="font-weight: 700">
                </td>
                <td class="style6">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr align="left">
                <td class="style5" style="font-weight: 700">
                <asp:Label ID="lblOperation" runat="server" style="font-weight: 700" 
                        Text="Select Operation" Visible="False"></asp:Label>
                    </td>
                <td class="style6">
                    <asp:RadioButtonList ID="rblOperation" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="rblOperation_SelectedIndexChanged" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Backup</asp:ListItem>
                        <asp:ListItem>Restore</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr align="left">
                <td class="style5">
                    <asp:Label ID="lblPath" runat="server" style="font-weight: 700" 
                        Text="Select File To Backup" Visible="False"></asp:Label>
                </td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
                    <asp:RequiredFieldValidator ID="rfvRestore" runat="server" 
                        ControlToValidate="FileUpload1" Enabled="False" 
                        ErrorMessage="Enter The Location Of Backup File" Font-Bold="True" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="left">
                <td class="style5">
                </td>
                <td class="style6">
                    <asp:Button ID="btnExecute" runat="server" onclick="btnExecute_Click" 
                        Text="Execute" />
                </td>
            </tr>
        </table>
   </center>
</asp:Content>

