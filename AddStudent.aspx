<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="Student, App_Web_2vag3bbd" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 164px;
        }
        .style4
        {
            width: 260px;
            margin-left: 160px;
        }
        .style6
        {}
        .style7
        {
            width: 140px;
            height: 23px;
        }
        .style10
        {
            width: 164px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
        }
        .style23
        {
            width: 140px;
        }
        .watermark
        {
            width:150px;
            font:Verdana;
            font-style:italic;
            color:GrayText;
        }
        .style28
        {
            width: 140px;
            font-weight: bold;
            height: 30px;
        }
        .style29
        {
            width: 260px;
            margin-left: 160px;
            height: 30px;
        }
        .style30
        {
            width: 164px;
            font-weight: bold;
            height: 30px;
        }
        .style31
        {
            height: 30px;
        }
        .style32
        {
            width: 140px;
            font-weight: bold;
            height: 60px;
        }
        .style33
        {
            width: 260px;
            margin-left: 160px;
            height: 60px;
        }
        .style34
        {
            width: 164px;
            font-weight: bold;
            height: 60px;
        }
        .style35
        {
            height: 60px;
        }
        .style37
        {
            width: 164px;
            height: 30px;
        }
        .style38
        {
            width: 140px;
            height: 30px;
        }
        .style39
        {
            width: 260px;
            height: 23px;
        }
    </style>
</asp:content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<center>
    <table>
        <tr align="left">
            <td class="style28">
            </td>
            <td class="style29">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style30">
            </td>
            <td class="style31">
            </td>
        </tr>
        <tr align="left">
            <td class="style28">
                <asp:Label ID="lblFullName" runat="server" Text="Full Name"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtFirstname" runat="server" Height="23px" Width="260px"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtFirstname_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="txtFirstname" WatermarkText="First Name">
                </asp:TextBoxWatermarkExtender>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style31">
                &nbsp;</td>
        </tr>
        <tr align="left">
            <td class="style28">
                <asp:Label ID="lblEnrollmentno" runat="server" Text="Enrollment No."></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtEnrollmentno" runat="server" AutoPostBack="True" 
                    ontextchanged="txtEnrollmentno_TextChanged"></asp:TextBox>
            </td>
            <td class="style30">
                <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
            </td>
            <td class="style31">
                    <asp:DropDownList ID="ddlDepartment" runat="server">
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>EC</asp:ListItem>
                        <asp:ListItem>EE</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>AE</asp:ListItem>
                        <asp:ListItem>FT</asp:ListItem>
                        <asp:ListItem>CE</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>CP</asp:ListItem>
                    </asp:DropDownList>
            </td>
        </tr>
        <tr align="left">
            <td class="style28">
                <asp:Label ID="lblEmail" runat="server" Text="E-mail Id"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td class="style30">
                <asp:Label ID="lblDob" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td class="style31">
                <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtDob_CalendarExtender" runat="server" 
                    TargetControlID="txtDob">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr align="left">
            <td class="style28">
                <asp:Label ID="lblEntry_year" runat="server" Text="Entry Year"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtEntryYear" runat="server"></asp:TextBox>
            </td>
            <td class="style30">
                <asp:Label ID="lblBloodgroup" runat="server" Text="BloodGroup"></asp:Label>
            </td>
            <td class="style31">
                <asp:TextBox ID="txtBloodgroup" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style32">
                <asp:Label ID="lblLocal_add" runat="server" Text="Local Address"></asp:Label>
            </td>
            <td class="style33">
                <asp:TextBox ID="txtLocal_add" runat="server" TextMode="MultiLine" 
                    Height="57px"></asp:TextBox>
            </td>
            <td class="style34">
                <asp:Label ID="lblPermanent_add" runat="server" Text="Permanent Address"></asp:Label>
            </td>
            <td class="style35">
                <asp:TextBox ID="txtPermanentAdd" runat="server" TextMode="MultiLine" 
                    Height="57px"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style28">
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                 </td>
            <td class="style30">
                <asp:Label ID="code" runat="server" Text="Pin-code"></asp:Label>
            </td>
            <td class="style31">
                <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style28">
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                 </td>
            <td class="style30">
                <asp:Label ID="lblmobile" runat="server" Text="Mobile No."></asp:Label>
            </td>
            <td class="style31">
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="left">
            <td class="style28">
                <asp:Label ID="lblPhone" runat="server" Text="Phone no."></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtHomeno" runat="server"></asp:TextBox>
            </td>
            <td class="style30">
                </td>
            <td class="style31">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                  </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr align="left">
            <td class="style28">
                <asp:Label ID="lblmember_type" runat="server" Text="Member Type"></asp:Label>
            </td>
            <td class="style29">
                <asp:DropDownList ID="ddlMember" runat="server"  Height="26px" 
                    Width="130px">
                    <asp:ListItem>Regular</asp:ListItem>
                    <asp:ListItem>D to D</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style37">
                </td>
            <td class="style31">
                </td>
        </tr>
        <tr align="left">
            <td class="style38">
                <asp:Label ID="lblRemarks" runat="server" Text="Remarks"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtRemarks" runat="server" 
                    ></asp:TextBox>
            </td>
            <td class="style37">
                </td>
            <td class="style31">
                </td>
        </tr>
        <tr align="left">
            <td class="style7">
                &nbsp;</td>
            <td class="style39">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style10">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr align="left">
            <td class="style23">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btnAdd" runat="server" CssClass="style6" Height="26px" 
                    Text="Add" Width="130px" onclick="btndone_Click" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</center>
</asp:Content>