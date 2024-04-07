<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="BL.QuoteMachine.WebForm2" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>
          <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />
 <div class="demo-container size-custom">
        <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" LoadingPanelID="RadAjaxLoadingPanel1">
            <telerik:RadDataForm RenderMode="Lightweight" runat="server" ID="RadDataForm1" DataKeyNames="c_id" DataSourceID="SqlDataSource1" OnPreRender="RadDataForm1_PreRender">
                <LayoutTemplate>
                    <div id="demo">
                        <div class="RadDataForm RadDataForm_<%# Container.Skin %> rdfInlineBlock">
                            <div class="rdfHeader ">
                                <div class="rdfHeaderInner">Our customers</div>
                            </div>
                            <div id="itemPlaceholder" runat="server">
                            </div>
                            <div class="rdfPager rdfPagerLeft">
                                <span>
                                    <telerik:RadButton RenderMode="Lightweight" ID="RadButton1" runat="server" CommandArgument="First" CommandName="Page" CssClass="rdfActionButton rdfPageFirst" ToolTip="First">
                                        <Icon PrimaryIconCssClass="rdfIcon rdfPageFirstIcon" />
                                    </telerik:RadButton>
                                    <telerik:RadButton RenderMode="Lightweight" ID="RadButton2" runat="server" CommandArgument="Prev" CommandName="Page" CssClass="rdfActionButton rdfPagePrev" ToolTip="Previous">
                                        <Icon PrimaryIconCssClass="rdfIcon rdfPagePrevIcon" />
                                    </telerik:RadButton>
                                </span><span>
                                    <telerik:RadButton RenderMode="Lightweight" ID="RadButton3" runat="server" CommandArgument="Next" CommandName="Page" CssClass="rdfActionButton rdfPageNext" ToolTip="Next">
                                        <Icon PrimaryIconCssClass="rdfIcon rdfPageNextIcon" />
                                    </telerik:RadButton>
                                    <telerik:RadButton RenderMode="Lightweight" ID="RadButton4" runat="server" CommandArgument="Last" CommandName="Page" CssClass="rdfActionButton rdfPageLast" ToolTip="Last">
                                        <Icon PrimaryIconCssClass="rdfIcon rdfPageLastIcon" />
                                    </telerik:RadButton>
                                </span>
                            </div>
                        </div>
                    </div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="rdfFieldset rdfBorders">
                        <div class="rdfRow">
                            <asp:Label ID="CompanyNameLabel2" runat="server" CssClass="rdfLabel rdfBlock" Text="CompanyName"></asp:Label>
                            <asp:Label ID="CompanyNameLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("CompanyName") %>' />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="ContactNameLabel2" runat="server" CssClass="rdfLabel rdfBlock" Text="ContactName"></asp:Label>
                            <asp:Label ID="ContactNameLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("ContactName") %>' />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="ContactTitleLabel2" runat="server" CssClass="rdfLabel rdfBlock" Text="ContactTitle"></asp:Label>
                            <asp:Label ID="ContactTitleLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("ContactTitle") %>' />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="AddressLabel2" runat="server" CssClass="rdfLabel rdfBlock" Text="Address"></asp:Label>
                            <asp:Label ID="AddressLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("Address") %>' />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="CityLabel2" runat="server" CssClass="rdfLabel rdfBlock" Text="City"></asp:Label>
                            <asp:Label ID="CityLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("City") %>' />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="CountryLabel2" runat="server" CssClass="rdfLabel rdfBlock" Text="Country"></asp:Label>
                            <asp:Label ID="CountryLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("Country") %>' />
                        </div>
 
                        <div class="rdfCommandButtons">
                            <hr class="rdfHr" />
                            <telerik:RadButton RenderMode="Lightweight" ID="InitInsertButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="InitInsert" Text="Insert" ToolTip="Insert" />
                            <telerik:RadButton RenderMode="Lightweight" ID="EditButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="Edit" Text="Edit" ToolTip="Edit" />
                            <telerik:RadButton RenderMode="Lightweight" ID="DeleteButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="Delete" Text="Delete" ToolTip="Delete" />
                        </div>
                    </div>
                </ItemTemplate>
                <EditItemTemplate>
                    <fieldset class="rdfFieldset rdfBorders">
                        <legend class="rdfLegend"></legend>
                        <div class="rdfRow">
                            <asp:Label ID="CustomerIDLabel2" runat="server" CssClass="rdfLabel rdfBlock" Text="CustomerID"></asp:Label>
                            <asp:Label ID="CustomerIDLabel1" runat="server" CssClass="rdfFieldValue" Text='<%# Eval("CustomerID") %>' />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="CompanyNameLabel2" runat="server" AssociatedControlID="CompanyNameTextBox" CssClass="rdfLabel rdfBlock" Text="CompanyName"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' WrapperCssClass="rdfInput" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="CompanyName is required" Display="Dynamic" ControlToValidate="CompanyNameTextBox" runat="server" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="ContactNameLabel2" runat="server" AssociatedControlID="ContactNameTextBox" CssClass="rdfLabel rdfBlock" Text="ContactName"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="ContactTitleLabel2" runat="server" AssociatedControlID="ContactTitleTextBox" CssClass="rdfLabel rdfBlock" Text="ContactTitle"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="AddressLabel2" runat="server" AssociatedControlID="AddressTextBox" CssClass="rdfLabel rdfBlock" Text="Address"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="CityLabel2" runat="server" AssociatedControlID="CityTextBox" CssClass="rdfLabel rdfBlock" Text="City"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="CountryLabel2" runat="server" AssociatedControlID="CountryTextBox" CssClass="rdfLabel rdfBlock" Text="Country"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfCommandButtons">
                            <hr class="rdfHr" />
                            <telerik:RadButton RenderMode="Lightweight" ID="UpdateButton" runat="server" ButtonType="SkinnedButton" CommandName="Update" Text="Update" ToolTip="Update" />
                            <telerik:RadButton RenderMode="Lightweight" ID="CancelButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="Cancel" Text="Cancel" ToolTip="Cancel" />
                        </div>
                    </fieldset>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <fieldset class="rdfFieldset rdfBorders">
                        <legend class="rdfLegend"></legend>
                        <div class="rdfRow">
                            <asp:Label ID="CustomerIDLabel2" runat="server" CssClass="rdfLabel rdfBlock" Text="CustomerID"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' WrapperCssClass="rdfInput" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="CustomerID is required" Display="Dynamic" ControlToValidate="CustomerIDTextBox" runat="server" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="CompanyNameLabel2" runat="server" AssociatedControlID="CompanyNameTextBox" CssClass="rdfLabel rdfBlock" Text="CompanyName"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' WrapperCssClass="rdfInput" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="CompanyName is required" Display="Dynamic" ControlToValidate="CompanyNameTextBox" runat="server" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="ContactNameLabel2" runat="server" AssociatedControlID="ContactNameTextBox" CssClass="rdfLabel rdfBlock" Text="ContactName"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="ContactTitleLabel2" runat="server" AssociatedControlID="ContactTitleTextBox" CssClass="rdfLabel rdfBlock" Text="ContactTitle"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="AddressLabel2" runat="server" AssociatedControlID="AddressTextBox" CssClass="rdfLabel rdfBlock" Text="Address"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="CityLabel2" runat="server" AssociatedControlID="CityTextBox" CssClass="rdfLabel rdfBlock" Text="City"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfRow">
                            <asp:Label ID="CountryLabel2" runat="server" AssociatedControlID="CountryTextBox" CssClass="rdfLabel rdfBlock" Text="Country"></asp:Label>
                            <telerik:RadTextBox RenderMode="Lightweight" ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' WrapperCssClass="rdfInput" />
                        </div>
                        <div class="rdfCommandButtons">
                            <hr class="rdfHr" />
                            <telerik:RadButton RenderMode="Lightweight" ID="PerformInsertButton" runat="server" ButtonType="SkinnedButton" CommandName="PerformInsert" Text="Insert" ToolTip="Insert" />
                            <telerik:RadButton RenderMode="Lightweight" ID="CancelButton" runat="server" ButtonType="SkinnedButton" CausesValidation="False" CommandName="Cancel" Text="Cancel" ToolTip="Cancel" />
                        </div>
                    </fieldset>
                </InsertItemTemplate>
                <EmptyDataTemplate>
                    <div class="RadDataForm RadDataForm_<%# Container.Skin %>">
                        <div class="rdfEmpty">
                            There are no items to be displayed.
                        </div>
                    </div>
                </EmptyDataTemplate>
            </telerik:RadDataForm>
        </telerik:RadAjaxPanel>
        <telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1"></telerik:RadAjaxLoadingPanel>
    </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=quotemachine;Integrated Security=True;Trust Server Certificate=True" DeleteCommand="DELETE FROM [tbl_project] WHERE [c_id] = @c_id" InsertCommand="INSERT INTO [tbl_project] ([c_project_name], [c_salesperson_id], [c_customer_email_id_from_hubspot], [c_customer_id], [c__leadstatus_id], [c_project_delivery_address_1], [c_project_delivery_address_2], [c_project_delivery_city], [c_project_delivery_state], [c_project_delivery_zip], [c_project_delivery_phone], [c_start_date], [c_deliver_by_date], [c_project_info], [c_salesperson_notes], [c_how_found_id], [c_callback_appt], [CreatedBy]) VALUES (@c_project_name, @c_salesperson_id, @c_customer_email_id_from_hubspot, @c_customer_id, @c_leadstatus_id, @c_project_delivery_address_1, @c_project_delivery_address_2, @c_project_delivery_city, @c_project_delivery_state, @c_project_delivery_zip, @c_project_delivery_phone, @c_start_date, @c_deliver_by_date, @c_project_info, @c_salesperson_notes, @c_how_found_id, @c_callback_appt, @CreatedBy)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tbl_project]" UpdateCommand="UPDATE [tbl_project] SET [c_project_name] = @c_project_name, [c_salesperson_id] = @c_salesperson_id, [c_customer_email_id_from_hubspot] = @c_customer_email_id_from_hubspot, [c_customer_id] = @c_customer_id, [c__leadstatus_id] = @c_leadstatus_id, [c_project_delivery_address_1] = @c_project_delivery_address_1, [c_project_delivery_address_2] = @c_project_delivery_address_2, [c_project_delivery_city] = @c_project_delivery_city, [c_project_delivery_state] = @c_project_delivery_state, [c_project_delivery_zip] = @c_project_delivery_zip, [c_project_delivery_phone] = @c_project_delivery_phone, [c_start_date] = @c_start_date, [c_deliver_by_date] = @c_deliver_by_date, [c_project_info] = @c_project_info, [c_salesperson_notes] = @c_salesperson_notes, [c_how_found_id] = @c_how_found_id, [c_callback_appt] = @c_callback_appt, [CreatedBy] = @CreatedBy WHERE [c_id] = @c_id">
            <DeleteParameters>
                <asp:Parameter Name="c_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="c_project_name" Type="String" />
                <asp:Parameter Name="c_salesperson_id" Type="Int32" />
                <asp:Parameter Name="c_customer_email_id_from_hubspot" Type="String" />
                <asp:Parameter Name="c_customer_id" Type="Int32" />
                <asp:Parameter Name="c_leadstatus_id" Type="Int32" />
                <asp:Parameter Name="c_project_delivery_address_1" Type="String" />
                <asp:Parameter Name="c_project_delivery_address_2" Type="String" />
                <asp:Parameter Name="c_project_delivery_city" Type="String" />
                <asp:Parameter Name="c_project_delivery_state" Type="String" />
                <asp:Parameter Name="c_project_delivery_zip" Type="String" />
                <asp:Parameter Name="c_project_delivery_phone" Type="String" />
                <asp:Parameter DbType="DateTime2" Name="c_start_date" />
                <asp:Parameter DbType="DateTime2" Name="c_deliver_by_date" />
                <asp:Parameter Name="c_project_info" Type="String" />
                <asp:Parameter Name="c_salesperson_notes" Type="String" />
                <asp:Parameter Name="c_how_found_id" Type="Int32" />
                <asp:Parameter DbType="DateTime2" Name="c_callback_appt" />
                <asp:Parameter Name="CreatedBy" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="c_project_name" Type="String" />
                <asp:Parameter Name="c_salesperson_id" Type="Int32" />
                <asp:Parameter Name="c_customer_email_id_from_hubspot" Type="String" />
                <asp:Parameter Name="c_customer_id" Type="Int32" />
                <asp:Parameter Name="c_leadstatus_id" Type="Int32" />
                <asp:Parameter Name="c_project_delivery_address_1" Type="String" />
                <asp:Parameter Name="c_project_delivery_address_2" Type="String" />
                <asp:Parameter Name="c_project_delivery_city" Type="String" />
                <asp:Parameter Name="c_project_delivery_state" Type="String" />
                <asp:Parameter Name="c_project_delivery_zip" Type="String" />
                <asp:Parameter Name="c_project_delivery_phone" Type="String" />
                <asp:Parameter DbType="DateTime2" Name="c_start_date" />
                <asp:Parameter DbType="DateTime2" Name="c_deliver_by_date" />
                <asp:Parameter Name="c_project_info" Type="String" />
                <asp:Parameter Name="c_salesperson_notes" Type="String" />
                <asp:Parameter Name="c_how_found_id" Type="Int32" />
                <asp:Parameter DbType="DateTime2" Name="c_callback_appt" />
                <asp:Parameter Name="CreatedBy" Type="String" />
                <asp:Parameter Name="c_id" Type="Int32" />
            </UpdateParameters>
         </asp:SqlDataSource>
    </form>
</body>
</html>
