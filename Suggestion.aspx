<%@ page title="" language="C#" masterpagefile="~/AllUser.master" autoeventwireup="true" inherits="_Default, App_Web_2vag3bbd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" language="javascript">
    function limitText(limitField, limitNum) {
        var limitCount = document.getElementById("a1");
        if (limitField.value.length > limitNum) {
            limitField.value = limitField.value.substring(0, limitNum);
        }
        else {
            limitCount.value = limitNum - limitField.value.length;
        }

    }
</script>
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style6
        {
            width: 110px;
        }
        .style7
        {
            width: 110px;
            height: 8px;
        }
        .style8
        {
            height: 8px;
        }
        .style9
        {
        }
        .style10
        {
            width: 422px;
            height: 8px;
        }
        .style11
        {
            width: 422px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="{font-weight:bold;" >
    <table class="style4" dir="ltr" cellpadding="5px" cellspacing="5px" style="font-weight: bold; text-align: left;align:"center">
        <tr>
            <td class="style9" align="left" colspan="3">
            <center>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTitle" runat="server" Text="Suggestion Form" Font-Bold="False"
                    Font-Underline="True" Font-Size="25pt"></asp:Label>
            </center>
            </td>
            <td class="style9" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" align="left">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
            <td align="left">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10" align="left">
                &nbsp;</td>
            <td class="style7" align="left">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            </td>
            <td align="left" class="style8">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator">Enter Name</asp:RequiredFieldValidator>
            </td>
            <td align="left" class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" align="left">
                &nbsp;</td>
            <td class="style6" align="left">
                <asp:Label ID="lblEnrollNo" runat="server" Text="Enrollment No."></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtEnrollNo" runat="server" AutoPostBack="True" 
                    ontextchanged="txtEnrollNo_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEnrollNo" runat="server" 
                    ControlToValidate="txtEnrollNo" ErrorMessage="RequiredFieldValidator">Enter Enrollment No</asp:RequiredFieldValidator>
            </td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" align="left">
                &nbsp;</td>
            <td class="style6" align="left">
                <asp:Label ID="lblEmailID" runat="server" Text="EmailID"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmailID" runat="server" 
                    ControlToValidate="txtEmailID" ErrorMessage="Enter Email ID"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rfvEmaiID" runat="server" 
                    ControlToValidate="txtEmailID" ErrorMessage="Enter valid Email ID" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" align="left">
                &nbsp;</td>
            <td class="style6" align="left">
                <asp:Label ID="lblSuggetion" runat="server" Text="Suggestion"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtSuggetion" runat="server" Columns="20" Rows="5" 
                    TextMode="MultiLine" Width="259px" MaxLength="200" onkeydown="limitText(this,200);" onkeyup="limitText(this,200);"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSuggetion" runat="server" 
                    ControlToValidate="txtSuggetion" ErrorMessage="Enter Suggestion"></asp:RequiredFieldValidator>
            </td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
                <td class="style11"></td>
                <td></td>
                <td>(Maximum characters: 200)<br />
                         You have  
                        <input name="character" type="text" id="a1" disabled="disabled" size="3" value="200" style="height:22px;width:56px;" />
                         characters left. </td>
                <td align="right">&nbsp;</td>
        </tr>
        <tr>
            <td class="style11" align="left">
                &nbsp;</td>
            <td class="style6" align="left">
                &nbsp;</td>
            <td align="left">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSendMail_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td align="left">
                &nbsp;</td>
        </tr>
        </table>
</div>
</asp:Content>

