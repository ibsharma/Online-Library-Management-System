<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="BookSearch, App_Web_2vag3bbd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 150px;
        }
        
        .water
        {
            background-color:InactiveBorder;
            color:Gray;
        }
        .style13
        {
            height: 28px;
        }
        .style14
        {
            height: 28px;
            width: 109px;
        }
        .style16
        {
            width: 190px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" BorderWidth="1" BorderStyle="Solid">
        <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Datagrid">
            <HeaderTemplate>Data Grid</HeaderTemplate>
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="BookID" 
                    DataSourceID="SqlDataSource1" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" 
                            SortExpression="BookID" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="CallNo" HeaderText="CallNo" 
                            SortExpression="CallNo" />
                        <asp:BoundField DataField="Rack" HeaderText="Rack" SortExpression="Rack" />
                        <asp:BoundField DataField="Author" HeaderText="Author" 
                            SortExpression="Author" />
                        <asp:BoundField DataField="Copies" HeaderText="Copies" 
                            SortExpression="Copies" />
                        <asp:BoundField DataField="Dept" HeaderText="Dept" SortExpression="Dept" />
                        <asp:BoundField DataField="Publication" HeaderText="Publication" 
                            SortExpression="Publication" />
                        <asp:BoundField DataField="PublicationYear" HeaderText="PublicationYear" 
                            SortExpression="PublicationYear" />
                        <asp:BoundField DataField="PublicationPlace" HeaderText="PublicationPlace" 
                            SortExpression="PublicationPlace" />
                        <asp:CheckBoxField DataField="Reference" HeaderText="Reference" 
                            SortExpression="Reference" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
                        <asp:CheckBoxField DataField="Maintenance" HeaderText="Maintenance" 
                            SortExpression="Maintenance" />
                        <asp:BoundField DataField="Supplier" HeaderText="Supplier" 
                            SortExpression="Supplier" />
                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                            SortExpression="Remarks" />
                        <asp:CheckBoxField DataField="Missing" HeaderText="Missing" 
                            SortExpression="Missing" />
                        <asp:CheckBoxField DataField="WithCD" HeaderText="WithCD" 
                            SortExpression="WithCD" />
                        <asp:CheckBoxField DataField="WithDVD" HeaderText="WithDVD" 
                            SortExpression="WithDVD" />
                        <asp:BoundField DataField="MemberID" HeaderText="MemberID" 
                            SortExpression="MemberID" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Edition" HeaderText="Edition" 
                            SortExpression="Edition" />
                        <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                        <asp:BoundField DataField="Pages" HeaderText="Pages" SortExpression="Pages" />
                        <asp:BoundField DataField="IssueOcurance" HeaderText="IssueOcurance" 
                            SortExpression="IssueOcurance" />
                        <asp:BoundField DataField="BillNo" HeaderText="BillNo" 
                            SortExpression="BillNo" />
                        <asp:BoundField DataField="BillDate" HeaderText="BillDate" 
                            SortExpression="BillDate" />
                    </Columns>
                    <EditRowStyle Width="100px" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                   <%-- <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />--%>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" 
                    DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @original_BookID" 
                    InsertCommand="INSERT INTO [Books] ([BookID], [Title], [CallNo], [Rack], [Author], [Copies], [Dept], [Publication], [PublicationYear], [PublicationPlace], [Reference], [Status], [Type], [URL], [Maintenance], [Supplier], [Remarks], [Missing], [WithCD], [WithDVD], [MemberID], [Price], [Edition], [ISBN], [Pages], [IssueOcurance], [BillNo], [BillDate]) VALUES (@BookID, @Title, @CallNo, @Rack, @Author, @Copies, @Dept, @Publication, @PublicationYear, @PublicationPlace, @Reference, @Status, @Type, @URL, @Maintenance, @Supplier, @Remarks, @Missing, @WithCD, @WithDVD, @MemberID, @Price, @Edition, @ISBN, @Pages, @IssueOcurance, @BillNo, @BillDate)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Books]" 
                    
                    UpdateCommand="UPDATE [Books] SET [Title] = @Title, [CallNo] = @CallNo, [Rack] = @Rack, [Author] = @Author, [Copies] = @Copies, [Dept] = @Dept, [Publication] = @Publication, [PublicationYear] = @PublicationYear, [PublicationPlace] = @PublicationPlace, [Reference] = @Reference, [Status] = @Status, [Type] = @Type, [URL] = @URL, [Maintenance] = @Maintenance, [Supplier] = @Supplier, [Remarks] = @Remarks, [Missing] = @Missing, [WithCD] = @WithCD, [WithDVD] = @WithDVD, [MemberID] = @MemberID, [Price] = @Price, [Edition] = @Edition, [ISBN] = @ISBN, [Pages] = @Pages, [IssueOcurance] = @IssueOcurance, [BillNo] = @BillNo, [BillDate] = @BillDate WHERE [BookID] = @original_BookID ">
                    <DeleteParameters>
                        <asp:Parameter Name="original_BookID" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_CallNo" Type="String" />
                        <asp:Parameter Name="original_Rack" Type="String" />
                        <asp:Parameter Name="original_Author" Type="String" />
                        <asp:Parameter Name="original_Copies" Type="String" />
                        <asp:Parameter Name="original_Dept" Type="String" />
                        <asp:Parameter Name="original_Publication" Type="String" />
                        <asp:Parameter Name="original_PublicationYear" Type="String" />
                        <asp:Parameter Name="original_PublicationPlace" Type="String" />
                        <asp:Parameter Name="original_Reference" Type="Boolean" />
                        <asp:Parameter Name="original_Status" Type="Boolean" />
                        <asp:Parameter Name="original_Type" Type="String" />
                        <asp:Parameter Name="original_URL" Type="String" />
                        <asp:Parameter Name="original_Maintenance" Type="Boolean" />
                        <asp:Parameter Name="original_Supplier" Type="String" />
                        <asp:Parameter Name="original_Remarks" Type="String" />
                        <asp:Parameter Name="original_Missing" Type="Boolean" />
                        <asp:Parameter Name="original_WithCD" Type="Boolean" />
                        <asp:Parameter Name="original_WithDVD" Type="Boolean" />
                        <asp:Parameter Name="original_MemberID" Type="String" />
                        <asp:Parameter Name="original_Price" Type="String" />
                        <asp:Parameter Name="original_Edition" Type="String" />
                        <asp:Parameter Name="original_ISBN" Type="String" />
                        <asp:Parameter Name="original_Pages" Type="String" />
                        <asp:Parameter Name="original_IssueOcurance" Type="Int32" />
                        <asp:Parameter Name="original_BillNo" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_BillDate" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BookID" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="CallNo" Type="String" />
                        <asp:Parameter Name="Rack" Type="String" />
                        <asp:Parameter Name="Author" Type="String" />
                        <asp:Parameter Name="Copies" Type="String" />
                        <asp:Parameter Name="Dept" Type="String" />
                        <asp:Parameter Name="Publication" Type="String" />
                        <asp:Parameter Name="PublicationYear" Type="String" />
                        <asp:Parameter Name="PublicationPlace" Type="String" />
                        <asp:Parameter Name="Reference" Type="Boolean" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="URL" Type="String" />
                        <asp:Parameter Name="Maintenance" Type="Boolean" />
                        <asp:Parameter Name="Supplier" Type="String" />
                        <asp:Parameter Name="Remarks" Type="String" />
                        <asp:Parameter Name="Missing" Type="Boolean" />
                        <asp:Parameter Name="WithCD" Type="Boolean" />
                        <asp:Parameter Name="WithDVD" Type="Boolean" />
                        <asp:Parameter Name="MemberID" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Edition" Type="String" />
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:Parameter Name="Pages" Type="String" />
                        <asp:Parameter Name="IssueOcurance" Type="Int32" />
                        <asp:Parameter Name="BillNo" Type="String" />
                        <asp:Parameter DbType="Date" Name="BillDate" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="CallNo" Type="String" />
                        <asp:Parameter Name="Rack" Type="String" />
                        <asp:Parameter Name="Author" Type="String" />
                        <asp:Parameter Name="Copies" Type="String" />
                        <asp:Parameter Name="Dept" Type="String" />
                        <asp:Parameter Name="Publication" Type="String" />
                        <asp:Parameter Name="PublicationYear" Type="String" />
                        <asp:Parameter Name="PublicationPlace" Type="String" />
                        <asp:Parameter Name="Reference" Type="Boolean" />
                        <asp:Parameter Name="Status" Type="Boolean" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="URL" Type="String" />
                        <asp:Parameter Name="Maintenance" Type="Boolean" />
                        <asp:Parameter Name="Supplier" Type="String" />
                        <asp:Parameter Name="Remarks" Type="String" />
                        <asp:Parameter Name="Missing" Type="Boolean" />
                        <asp:Parameter Name="WithCD" Type="Boolean" />
                        <asp:Parameter Name="WithDVD" Type="Boolean" />
                        <asp:Parameter Name="MemberID" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="Edition" Type="String" />
                        <asp:Parameter Name="ISBN" Type="String" />
                        <asp:Parameter Name="Pages" Type="String" />
                        <asp:Parameter Name="IssueOcurance" Type="Int32" />
                        <asp:Parameter Name="BillNo" Type="String" />
                        <asp:Parameter DbType="Date" Name="BillDate" />
                        <asp:Parameter Name="original_BookID" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_CallNo" Type="String" />
                        <asp:Parameter Name="original_Rack" Type="String" />
                        <asp:Parameter Name="original_Author" Type="String" />
                        <asp:Parameter Name="original_Copies" Type="String" />
                        <asp:Parameter Name="original_Dept" Type="String" />
                        <asp:Parameter Name="original_Publication" Type="String" />
                        <asp:Parameter Name="original_PublicationYear" Type="String" />
                        <asp:Parameter Name="original_PublicationPlace" Type="String" />
                        <asp:Parameter Name="original_Reference" Type="Boolean" />
                        <asp:Parameter Name="original_Status" Type="Boolean" />
                        <asp:Parameter Name="original_Type" Type="String" />
                        <asp:Parameter Name="original_URL" Type="String" />
                        <asp:Parameter Name="original_Maintenance" Type="Boolean" />
                        <asp:Parameter Name="original_Supplier" Type="String" />
                        <asp:Parameter Name="original_Remarks" Type="String" />
                        <asp:Parameter Name="original_Missing" Type="Boolean" />
                        <asp:Parameter Name="original_WithCD" Type="Boolean" />
                        <asp:Parameter Name="original_WithDVD" Type="Boolean" />
                        <asp:Parameter Name="original_MemberID" Type="String" />
                        <asp:Parameter Name="original_Price" Type="String" />
                        <asp:Parameter Name="original_Edition" Type="String" />
                        <asp:Parameter Name="original_ISBN" Type="String" />
                        <asp:Parameter Name="original_Pages" Type="String" />
                        <asp:Parameter Name="original_IssueOcurance" Type="Int32" />
                        <asp:Parameter Name="original_BillNo" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_BillDate" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Rapid Search">
            <HeaderTemplate>Rapid Search</HeaderTemplate>
            <ContentTemplate>
                <table>
                    <tr align="left">
                        <td class="style14">
                            <asp:Label ID="lblKeyword" runat="server" Text="keyword to serch"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:TextBox ID="txtKeyword" runat="server" Height="23px" Width="300px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtKeyword_TextBoxWatermarkExtender" 
                                runat="server" TargetControlID="txtKeyword" 
                                WatermarkText="Enter BookID or Title" WatermarkCssClass="water" Enabled="True">
                            </asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr align="left">
                        <td class="style7"></td>
                        <td><asp:Button ID="btnSearch" runat="server" Text="Search" 
                                onclick="btnSearch_Click" Height="24px" Width="136px" /></td>
                    </tr>
                </table>
                <div>
                    <center>
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                        <asp:GridView ID="gvBook" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            Visible="False" HorizontalAlign="Center" RowStyle-HorizontalAlign="Left">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("BookID")%>' OnClientClick="alert('Are you Sure?')" OnClick="deleteRow">Delete</asp:LinkButton>
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
        <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Advanced Search">
            <HeaderTemplate>Advanced Search</HeaderTemplate>
            <ContentTemplate>
                <asp:Label ID="lblFilters" runat="server" Text="Filters" Font-Underline="True"></asp:Label>
                <table>
                    <tr align="left">                       
                        <td class="style16"><asp:Label ID="lblBookID" runat="server" Text="Search by Book ID"></asp:Label></td>
                        <td class="style6"><asp:TextBox ID="txtBookID" runat="server" Width="149px"></asp:TextBox></td>
                    </tr>
                    <tr align="left">                       
                        <td class="style16"><asp:Label ID="lblTitle" runat="server" Text="Search by Title"></asp:Label></td>
                        <td class="style6"><asp:TextBox ID="txtTitle" runat="server" Height="23px" 
                                Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr align="left">                        
                        <td class="style16"><asp:Label ID="lblAuthor" runat="server" Text="Search by Author"></asp:Label></td>
                        <td class="style6"><asp:TextBox ID="txtAuthor" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr align="left">                        
                        <td class="style16"><asp:Label ID="lblISBN" runat="server" Text="Search by ISBN"></asp:Label></td>
                        <td class="style6"><asp:TextBox ID="txtISBN" runat="server" Height="22px" 
                                Width="149px"></asp:TextBox></td>
                    </tr>
                    <tr align="left">                       
                        <td class="style16"><asp:Label ID="lblPublisher" runat="server" Text="Search by Publisher"></asp:Label></td>
                        <td class="style6"><asp:TextBox ID="txtPublisher" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr align="left">                        
                        <td class="style16"><asp:Label ID="lblDepartment" runat="server" Text="Search by Department"></asp:Label></td>
                        <td class="style6">
                        <asp:DropDownList ID="ddlDepartment" runat="server" Height="23px" Width="148px">
                            <asp:ListItem Selected="True">IT</asp:ListItem>
                            <asp:ListItem>CP</asp:ListItem>
                            <asp:ListItem>EC</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                            <asp:ListItem>EE</asp:ListItem>
                            <asp:ListItem Value="AT">AT</asp:ListItem>
                            <asp:ListItem>FT</asp:ListItem>
                            <asp:ListItem>ALL</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    </tr>
                    <tr align="left">                        
                        <td class="style16"></td>
                        <td class="style6">
                            <asp:Button ID="btnASearch" runat="server" Text="Search" 
                                onclick="btnASearch_Click" Height="30px" Width="121px" />
                        </td>
                    </tr>
                </table>
                <div>
                    <center>
                        <asp:Label ID="lblAMsg" runat="server" ForeColor="Red"></asp:Label>
                        <asp:GridView ID="gvABook" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            Visible="False" HorizontalAlign="Center" RowStyle-HorizontalAlign="Left">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("BookID")%>' OnClientClick="alert('Are you Sure?')" OnClick="deleteRow">Delete</asp:LinkButton>
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

