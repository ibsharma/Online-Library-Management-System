<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="ShowSuggetion, App_Web_2vag3bbd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="SuggetionNo" 
        DataSourceID="SqlDataSource1" HorizontalAlign="Center" RowStyle-HorizontalAlign="Left">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="SuggetionNo" HeaderText="SuggetionNo" 
                SortExpression="SuggetionNo" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="EnrollmentNo" HeaderText="EnrollmentNo" 
                SortExpression="EnrollmentNo" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                SortExpression="EmailID" />
            <asp:BoundField DataField="Suggetion" HeaderText="Suggetion" 
                SortExpression="Suggetion" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <%--<SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" 
    DeleteCommand="DELETE FROM [Suggetion] WHERE [SuggetionNo] = @original_SuggetionNo AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([EnrollmentNo] = @original_EnrollmentNo) OR ([EnrollmentNo] IS NULL AND @original_EnrollmentNo IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Suggetion] = @original_Suggetion) OR ([Suggetion] IS NULL AND @original_Suggetion IS NULL))" 
    InsertCommand="INSERT INTO [Suggetion] ([SuggetionNo], [Name], [EnrollmentNo], [EmailID], [Suggetion]) VALUES (@SuggetionNo, @Name, @EnrollmentNo, @EmailID, @Suggetion)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [Suggetion]" 
    UpdateCommand="UPDATE [Suggetion] SET [Name] = @Name, [EnrollmentNo] = @EnrollmentNo, [EmailID] = @EmailID, [Suggetion] = @Suggetion WHERE [SuggetionNo] = @original_SuggetionNo AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([EnrollmentNo] = @original_EnrollmentNo) OR ([EnrollmentNo] IS NULL AND @original_EnrollmentNo IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Suggetion] = @original_Suggetion) OR ([Suggetion] IS NULL AND @original_Suggetion IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_SuggetionNo" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_EnrollmentNo" Type="String" />
            <asp:Parameter Name="original_EmailID" Type="String" />
            <asp:Parameter Name="original_Suggetion" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SuggetionNo" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="EnrollmentNo" Type="String" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="Suggetion" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="EnrollmentNo" Type="String" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="Suggetion" Type="String" />
            <asp:Parameter Name="original_SuggetionNo" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_EnrollmentNo" Type="String" />
            <asp:Parameter Name="original_EmailID" Type="String" />
            <asp:Parameter Name="original_Suggetion" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

