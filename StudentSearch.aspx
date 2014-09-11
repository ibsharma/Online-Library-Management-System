<%@ page title="" language="C#" masterpagefile="~/LibAdmin.master" autoeventwireup="true" inherits="StudentSearch, App_Web_4sqkqmot" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .water
        {
            background-color:InactiveBorder;
            color:Gray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
        BorderWidth="1">
        <asp:TabPanel runat="server" HeaderText="Data Grid" ID="TabPanel1">
            <HeaderTemplate>Data Grid</HeaderTemplate>
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MemberID" HorizontalAlign="Center"
        DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="Gainsboro" Width="3cm" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MemberID" HeaderText="MemberID" ReadOnly="True" 
                SortExpression="MemberID" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Dept" HeaderText="Dept" 
                SortExpression="Dept" />
            <asp:BoundField DataField="EntryYear" HeaderText="EntryYear" 
                SortExpression="EntryYear" />
            <asp:BoundField DataField="LocalAddress" HeaderText="LocalAddress" 
                SortExpression="LocalAddress" />
            <asp:BoundField DataField="PermenantAddress" HeaderText="PermenantAddress" 
                SortExpression="PermenantAddress" />
            <asp:BoundField DataField="City" HeaderText="City" 
                SortExpression="City" />
            <asp:BoundField DataField="PinNo" HeaderText="PinNo" 
                SortExpression="PinNo" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                SortExpression="EmailID" />
            <asp:BoundField DataField="HomePhone" HeaderText="HomePhone" 
                SortExpression="HomePhone" />
            <asp:BoundField DataField="MobilePhone" HeaderText="MobilePhone" 
                SortExpression="MobilePhone" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" 
                SortExpression="DOB" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" 
                SortExpression="BloodGroup" />
            <asp:BoundField DataField="PhysicianName" HeaderText="PhysicianName" 
                SortExpression="PhysicianName" />
            <asp:BoundField DataField="PhysicianPhoneNumber" HeaderText="PhysicianPhoneNumber" 
                SortExpression="PhysicianPhoneNumber" />
            <asp:BoundField DataField="EmergencyContactName" HeaderText="EmergencyContactName" 
                SortExpression="EmergencyContactName" />
            <asp:BoundField DataField="EmergencyContactRelationship" 
                HeaderText="EmergencyContactRelationship" 
                SortExpression="EmergencyContactRelationship" />
            <asp:BoundField DataField="EmergencyContactNo" 
                HeaderText="EmergencyContactNo" SortExpression="EmergencyContactNo" />
            <asp:BoundField DataField="Photo" 
                HeaderText="Photo" 
                SortExpression="Photo" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                SortExpression="Remarks" />
            <asp:BoundField DataField="MemberType" HeaderText="MemberType" 
                SortExpression="MemberType" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" Width="3cm" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
       <%-- <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />--%>
    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" 
                    DeleteCommand="DELETE FROM [Students1] WHERE [MemberID] = @original_MemberID " 
                    InsertCommand="INSERT INTO [Students1] ([MemberID], [Name], [Dept], [EntryYear], [LocalAddress], [PermenantAddress], [City], [PinNo], [State], [EmailID], [HomePhone], [MobilePhone], [DOB], [BloodGroup], [PhysicianName], [PhysicianPhoneNumber], [EmergencyContactName], [EmergencyContactRelationship], [EmergencyContactNo], [Photo], [Status], [Remarks], [MemberType]) VALUES (@MemberID, @Name, @Dept, @EntryYear, @LocalAddress, @PermenantAddress, @City, @PinNo, @State, @EmailID, @HomePhone, @MobilePhone, @DOB, @BloodGroup, @PhysicianName, @PhysicianPhoneNumber, @EmergencyContactName, @EmergencyContactRelationship, @EmergencyContactNo, @Photo, @Status, @Remarks, @MemberType)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Students1]" 
                    
                    UpdateCommand="UPDATE [Students1] SET [Name] = @Name, [Dept] = @Dept, [EntryYear] = @EntryYear, [LocalAddress] = @LocalAddress, [PermenantAddress] = @PermenantAddress, [City] = @City, [PinNo] = @PinNo, [State] = @State, [EmailID] = @EmailID, [HomePhone] = @HomePhone, [MobilePhone] = @MobilePhone, [DOB] = @DOB, [BloodGroup] = @BloodGroup, [PhysicianName] = @PhysicianName, [PhysicianPhoneNumber] = @PhysicianPhoneNumber, [EmergencyContactName] = @EmergencyContactName, [EmergencyContactRelationship] = @EmergencyContactRelationship, [EmergencyContactNo] = @EmergencyContactNo, [Photo] = @Photo, [Status] = @Status, [Remarks] = @Remarks, [MemberType] = @MemberType WHERE [MemberID] = @original_MemberID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_MemberID" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Dept" Type="String" />
                        <asp:Parameter Name="original_EntryYear" Type="String" />
                        <asp:Parameter Name="original_LocalAddress" Type="String" />
                        <asp:Parameter Name="original_PermenantAddress" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_PinNo" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_EmailID" Type="String" />
                        <asp:Parameter Name="original_HomePhone" Type="String" />
                        <asp:Parameter Name="original_MobilePhone" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DOB" />
                        <asp:Parameter Name="original_BloodGroup" Type="String" />
                        <asp:Parameter Name="original_PhysicianName" Type="String" />
                        <asp:Parameter Name="original_PhysicianPhoneNumber" Type="String" />
                        <asp:Parameter Name="original_EmergencyContactName" Type="String" />
                        <asp:Parameter Name="original_EmergencyContactRelationship" Type="String" />
                        <asp:Parameter Name="original_EmergencyContactNo" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                        <asp:Parameter Name="original_Status" Type="String" />
                        <asp:Parameter Name="original_Remarks" Type="String" />
                        <asp:Parameter Name="original_MemberType" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MemberID" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Dept" Type="String" />
                        <asp:Parameter Name="EntryYear" Type="String" />
                        <asp:Parameter Name="LocalAddress" Type="String" />
                        <asp:Parameter Name="PermenantAddress" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="PinNo" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="HomePhone" Type="String" />
                        <asp:Parameter Name="MobilePhone" Type="String" />
                        <asp:Parameter DbType="Date" Name="DOB" />
                        <asp:Parameter Name="BloodGroup" Type="String" />
                        <asp:Parameter Name="PhysicianName" Type="String" />
                        <asp:Parameter Name="PhysicianPhoneNumber" Type="String" />
                        <asp:Parameter Name="EmergencyContactName" Type="String" />
                        <asp:Parameter Name="EmergencyContactRelationship" Type="String" />
                        <asp:Parameter Name="EmergencyContactNo" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Remarks" Type="String" />
                        <asp:Parameter Name="MemberType" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Dept" Type="String" />
                        <asp:Parameter Name="EntryYear" Type="String" />
                        <asp:Parameter Name="LocalAddress" Type="String" />
                        <asp:Parameter Name="PermenantAddress" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="PinNo" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="HomePhone" Type="String" />
                        <asp:Parameter Name="MobilePhone" Type="String" />
                        <asp:Parameter DbType="Date" Name="DOB" />
                        <asp:Parameter Name="BloodGroup" Type="String" />
                        <asp:Parameter Name="PhysicianName" Type="String" />
                        <asp:Parameter Name="PhysicianPhoneNumber" Type="String" />
                        <asp:Parameter Name="EmergencyContactName" Type="String" />
                        <asp:Parameter Name="EmergencyContactRelationship" Type="String" />
                        <asp:Parameter Name="EmergencyContactNo" Type="String" />
                        <asp:Parameter Name="Photo" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Remarks" Type="String" />
                        <asp:Parameter Name="MemberType" Type="String" />
                        <asp:Parameter Name="original_MemberID" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Dept" Type="String" />
                        <asp:Parameter Name="original_EntryYear" Type="String" />
                        <asp:Parameter Name="original_LocalAddress" Type="String" />
                        <asp:Parameter Name="original_PermenantAddress" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_PinNo" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_EmailID" Type="String" />
                        <asp:Parameter Name="original_HomePhone" Type="String" />
                        <asp:Parameter Name="original_MobilePhone" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DOB" />
                        <asp:Parameter Name="original_BloodGroup" Type="String" />
                        <asp:Parameter Name="original_PhysicianName" Type="String" />
                        <asp:Parameter Name="original_PhysicianPhoneNumber" Type="String" />
                        <asp:Parameter Name="original_EmergencyContactName" Type="String" />
                        <asp:Parameter Name="original_EmergencyContactRelationship" Type="String" />
                        <asp:Parameter Name="original_EmergencyContactNo" Type="String" />
                        <asp:Parameter Name="original_Photo" Type="String" />
                        <asp:Parameter Name="original_Status" Type="String" />
                        <asp:Parameter Name="original_Remarks" Type="String" />
                        <asp:Parameter Name="original_MemberType" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Rapid Search">
            <HeaderTemplate>Rapid Search</HeaderTemplate>
            <ContentTemplate>
                <table>
                    <tr align="left">
                        <td style="width:150px">
                            <asp:Label ID="lblKeyword" runat="server" Text="keyword to serch"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtKeyword" runat="server" Height="30px" Width="587px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtKeyword_TextBoxWatermarkExtender" 
                                runat="server" TargetControlID="txtKeyword" WatermarkCssClass="water" 
                                WatermarkText="Enter Student Name or ID" Enabled="True">
                            </asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr align="left">                        
                        <td></td>
                        <td><asp:Button ID="btnSearch" runat="server" Text="Search" 
                                onclick="btnSearch_Click" Height="30px" Width="181px" /></td>
                    </tr>
                </table>
                <div>
                    <center>
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                        <asp:GridView ID="gvStudent" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center"  RowStyle-HorizontalAlign="Left"
                            Visible="False">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("MemberID")%>' OnClientClick="alert('Are you Sure?')" OnClick="deleteRow">Delete</asp:LinkButton>
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
                        <td><asp:Label ID="lblEno" runat="server" Text="Search by Enrollment no"></asp:Label></td>
                        <td><asp:TextBox ID="txtEno" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr align="left">                        
                        <td><asp:Label ID="lblName" runat="server" Text="Search by Name"></asp:Label></td>
                        <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr align="left">                        
                        <td><asp:Label ID="lblDepartment" runat="server" Text="Search by Department"></asp:Label></td>
                        <td>
                        <asp:DropDownList ID="ddlDepartment" runat="server">
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
                        <td></td>
                        <td>
                            <asp:Button ID="btnASearch" runat="server" Text="Search" 
                                onclick="btnASearch_Click" />
                        </td>
                    </tr>
                </table>
                <div>
                    <center>
                        <asp:Label ID="lblAMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                        <asp:GridView ID="gvAStudent" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center" RowStyle-HorizontalAlign="Left"
                            Visible="False">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%#Eval("MemberID")%>' OnClientClick="alert('Are you Sure?')" OnClick="deleteRow">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
                    </center>
                </div>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
</center>
</asp:Content>