<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="MagazineSearch, App_Web_2vag3bbd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
            .water
            {
                background-color:InactiveBorder;
                color:Gray;
            }
            
            .style7
            {
                width: 135px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
        <asp:TabPanel runat="server" HeaderText="Data Grid" ID="TabPanel1">
            <HeaderTemplate>Data Grid</HeaderTemplate>
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="DDNo" 
                    DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Title" HeaderText="Title" 
                            SortExpression="Title" />
                        <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                            SortExpression="Publisher" />
                        <asp:BoundField DataField="Frequency" HeaderText="Frequency" 
                            SortExpression="Frequency" />
                        <asp:BoundField DataField="DDNo" HeaderText="DDNo" 
                            SortExpression="DDNo" ReadOnly="True" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Agent" HeaderText="Agent" SortExpression="Agent" />
                        <asp:BoundField DataField="SubscriptionRate" HeaderText="SubscriptionRate" 
                            SortExpression="SubscriptionRate" />
                        <asp:BoundField DataField="SubscriptionPeriod" HeaderText="SubscriptionPeriod" 
                            SortExpression="SubscriptionPeriod" />
                        <asp:BoundField DataField="EntryNo" HeaderText="EntryNo" 
                            SortExpression="EntryNo" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                        <asp:BoundField DataField="VolumeNo" HeaderText="VolumeNo" 
                            SortExpression="VolumeNo" />
                        <asp:BoundField DataField="IssueNo" HeaderText="IssueNo" 
                            SortExpression="IssueNo" />
                        <asp:BoundField DataField="Department" HeaderText="Department" 
                            SortExpression="Department" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                   <%-- <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" 
                    DeleteCommand="DELETE FROM [Magazines] WHERE [DDNo] = @original_DDNo AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Publisher] = @original_Publisher) OR ([Publisher] IS NULL AND @original_Publisher IS NULL)) AND (([Frequency] = @original_Frequency) OR ([Frequency] IS NULL AND @original_Frequency IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Agent] = @original_Agent) OR ([Agent] IS NULL AND @original_Agent IS NULL)) AND (([SubscriptionRate] = @original_SubscriptionRate) OR ([SubscriptionRate] IS NULL AND @original_SubscriptionRate IS NULL)) AND (([SubscriptionPeriod] = @original_SubscriptionPeriod) OR ([SubscriptionPeriod] IS NULL AND @original_SubscriptionPeriod IS NULL)) AND (([EntryNo] = @original_EntryNo) OR ([EntryNo] IS NULL AND @original_EntryNo IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL)) AND (([VolumeNo] = @original_VolumeNo) OR ([VolumeNo] IS NULL AND @original_VolumeNo IS NULL)) AND (([IssueNo] = @original_IssueNo) OR ([IssueNo] IS NULL AND @original_IssueNo IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL))" 
                    InsertCommand="INSERT INTO [Magazines] ([Title], [Publisher], [Frequency], [DDNo], [Date], [Agent], [SubscriptionRate], [SubscriptionPeriod], [EntryNo], [Year], [VolumeNo], [IssueNo], [Department]) VALUES (@Title, @Publisher, @Frequency, @DDNo, @Date, @Agent, @SubscriptionRate, @SubscriptionPeriod, @EntryNo, @Year, @VolumeNo, @IssueNo, @Department)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Magazines]" 
                    UpdateCommand="UPDATE [Magazines] SET [Title] = @Title, [Publisher] = @Publisher, [Frequency] = @Frequency, [Date] = @Date, [Agent] = @Agent, [SubscriptionRate] = @SubscriptionRate, [SubscriptionPeriod] = @SubscriptionPeriod, [EntryNo] = @EntryNo, [Year] = @Year, [VolumeNo] = @VolumeNo, [IssueNo] = @IssueNo, [Department] = @Department WHERE [DDNo] = @original_DDNo AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Publisher] = @original_Publisher) OR ([Publisher] IS NULL AND @original_Publisher IS NULL)) AND (([Frequency] = @original_Frequency) OR ([Frequency] IS NULL AND @original_Frequency IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Agent] = @original_Agent) OR ([Agent] IS NULL AND @original_Agent IS NULL)) AND (([SubscriptionRate] = @original_SubscriptionRate) OR ([SubscriptionRate] IS NULL AND @original_SubscriptionRate IS NULL)) AND (([SubscriptionPeriod] = @original_SubscriptionPeriod) OR ([SubscriptionPeriod] IS NULL AND @original_SubscriptionPeriod IS NULL)) AND (([EntryNo] = @original_EntryNo) OR ([EntryNo] IS NULL AND @original_EntryNo IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL)) AND (([VolumeNo] = @original_VolumeNo) OR ([VolumeNo] IS NULL AND @original_VolumeNo IS NULL)) AND (([IssueNo] = @original_IssueNo) OR ([IssueNo] IS NULL AND @original_IssueNo IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_DDNo" Type="String" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Publisher" Type="String" />
                        <asp:Parameter Name="original_Frequency" Type="String" />
                        <asp:Parameter Name="original_Date" Type="String" />
                        <asp:Parameter Name="original_Agent" Type="String" />
                        <asp:Parameter Name="original_SubscriptionRate" Type="String" />
                        <asp:Parameter Name="original_SubscriptionPeriod" Type="String" />
                        <asp:Parameter Name="original_EntryNo" Type="String" />
                        <asp:Parameter Name="original_Year" Type="String" />
                        <asp:Parameter Name="original_VolumeNo" Type="String" />
                        <asp:Parameter Name="original_IssueNo" Type="String" />
                        <asp:Parameter Name="original_Department" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Publisher" Type="String" />
                        <asp:Parameter Name="Frequency" Type="String" />
                        <asp:Parameter Name="DDNo" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Agent" Type="String" />
                        <asp:Parameter Name="SubscriptionRate" Type="String" />
                        <asp:Parameter Name="SubscriptionPeriod" Type="String" />
                        <asp:Parameter Name="EntryNo" Type="String" />
                        <asp:Parameter Name="Year" Type="String" />
                        <asp:Parameter Name="VolumeNo" Type="String" />
                        <asp:Parameter Name="IssueNo" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Publisher" Type="String" />
                        <asp:Parameter Name="Frequency" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Agent" Type="String" />
                        <asp:Parameter Name="SubscriptionRate" Type="String" />
                        <asp:Parameter Name="SubscriptionPeriod" Type="String" />
                        <asp:Parameter Name="EntryNo" Type="String" />
                        <asp:Parameter Name="Year" Type="String" />
                        <asp:Parameter Name="VolumeNo" Type="String" />
                        <asp:Parameter Name="IssueNo" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="original_DDNo" Type="String" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Publisher" Type="String" />
                        <asp:Parameter Name="original_Frequency" Type="String" />
                        <asp:Parameter Name="original_Date" Type="String" />
                        <asp:Parameter Name="original_Agent" Type="String" />
                        <asp:Parameter Name="original_SubscriptionRate" Type="String" />
                        <asp:Parameter Name="original_SubscriptionPeriod" Type="String" />
                        <asp:Parameter Name="original_EntryNo" Type="String" />
                        <asp:Parameter Name="original_Year" Type="String" />
                        <asp:Parameter Name="original_VolumeNo" Type="String" />
                        <asp:Parameter Name="original_IssueNo" Type="String" />
                        <asp:Parameter Name="original_Department" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Rapid Search">
            <HeaderTemplate>Rapid Search</HeaderTemplate>
            <ContentTemplate>
                <table class="style4">
                <tr align="left">
                    <td class="style7"><asp:Label ID="lblKeyword" runat="server" Text="Keyword to search"></asp:Label></td>
                    <td><asp:TextBox ID="txtKeyword" runat="server" Height="22px" Width="302px"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtKeyword_TextBoxWatermarkExtender" 
                            runat="server" TargetControlID="txtKeyword" WatermarkCssClass="water" 
                            WatermarkText="Enter Magazine Title or Department" Enabled="True">
                        </asp:TextBoxWatermarkExtender>
                    </td>
                </tr>                    
                <tr align="left">
                    <td class="style7"></td>
                    <td><asp:Button ID="btnSearch" runat="server" Text="Search" 
                            onclick="btnSearch_Click" /></td>
                </tr>
                </table>
                <div>
                    <center>
                        <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                        <asp:GridView ID="gvMagazine" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center" RowStyle-HorizontalAlign="Left">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("Title")%>' OnClientClick="alert('Are you Sure?')" OnClick="deleteRow">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                           <%-- <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
                        </asp:GridView>   
                    </center>
                </div>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
</center>
</asp:Content>

