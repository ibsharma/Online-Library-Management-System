<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="ChangeLoan, App_Web_2vag3bbd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 113px;
        }
        .style5
        {
            width: 113px;
            height: 30px;
        }
        .style6
        {
            
        }
        .style7
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
    <center>
    <table>
                                        <tr align="left">
                                            <td class="style5">
                                                </td>
                                            <td class="style7">
                                                </td>
                                        </tr>
                                        <tr align="left">
                                            <td class="style7">
                                                &nbsp;</td>
                                            <th class="style7">
                                                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                                            </th>
                                        </tr>
                                        <tr align="left">
                                            <th class="style5">
                                                <asp:Label ID="lblMemeberType" runat="server" Text="Member Type"></asp:Label>
                                            </th>
                                            <td class="style7">
                                                <asp:DropDownList ID="ddlMemeberType" runat="server" Width="134px" 
                                                    AutoPostBack="True" Height="25px" 
                                                    onselectedindexchanged="ddlMemeberType_SelectedIndexChanged">
                                                    <asp:ListItem>Regular</asp:ListItem>
                                                    <asp:ListItem>D-To-D</asp:ListItem>
                                                    <asp:ListItem>Staff</asp:ListItem>
                                                    <asp:ListItem>Outsider</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr align="left">
                                            <th class="style5">
                                                <asp:Label ID="lblLoanPeriod" runat="server" Text="Loan Period"></asp:Label>
                                            </th>
                                            <td class="style6">
                                                <asp:TextBox ID="txtLoanPeriod" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvLoanPeriod" runat="server" 
                                                    ControlToValidate="txtLoanPeriod" ErrorMessage="Enter Loan Period" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr align="left">
                                            <th class="style5">
                                                <asp:Label ID="lblNoOfBooks" runat="server" Text="No of Books"></asp:Label>
                                            </th>
                                            <td class="style6">
                                                <asp:TextBox ID="txtNoOfBooks" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvNoOfBooks" runat="server" 
                                                    ControlToValidate="txtNoOfBooks" ErrorMessage="Enter No of Books" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr align="left">
                                            <td class="style3">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnChangeLoanPeriod" runat="server" Text="Change" 
                                                    onclick="btnChangeLoanPeriod_Click" />
                                            </td>
                                        </tr>
                                        </table>
         </center>
    </div>
</asp:Content>

