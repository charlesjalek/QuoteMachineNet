<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="DensityForm.aspx.vb" Inherits="BL.QuoteMachine.DensityForm" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/grid.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout runat="server" ID="JumbotronLayout" CssClass="jumbotron" GridType="Fluid">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="10" SpanMd="12" SpanSm="12" SpanXs="12">
                        <h1>Lookups</h1>
                        <h2>Density</h2>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <img src="images/Thumbnails/Desert.jpg" />
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />
        <p id="divMsgs" runat="server">
            <asp:Label ID="Label1" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="#FF8080"></asp:Label>
            <asp:Label ID="Label2" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="#00C000"></asp:Label>
        </p>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="RadGrid1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="divMsgs"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManager>
        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">
        </telerik:RadAjaxLoadingPanel>

         <telerik:RadFormDecorator RenderMode="Lightweight" ID="RadFormDecorator1" runat="server" DecorationZoneID="demo" DecoratedControls="All" EnableRoundedCorners="false" />
        <div id="demo" class="demo-container no-bg">

            <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server" CssClass="RadGrid"
                AllowPaging="True" PageSize="15" AllowSorting="True" AutoGenerateColumns="False"
                ShowStatusBar="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" DataKeyNames="c_id"
                AllowAutomaticUpdates="True" DataSourceID="SqlDataSource1" AllowFilteringByColumn="True" ShowGroupPanel="True" Skin="Office2010Blue" >


                <MasterTableView CommandItemDisplay="TopAndBottom" GridLines="None" DataSourceID="SqlDataSource1"
                    DataKeyNames="c_id" AllowFilteringByColumn="False" AllowSorting="True">
                    <RowIndicatorColumn ShowNoSortIcon="True"></RowIndicatorColumn>

                    <ExpandCollapseColumn ShowNoSortIcon="True"></ExpandCollapseColumn>
                    <Columns>
                        <telerik:GridBoundColumn DataField="c_species_code" FilterControlAltText="Filter c_species_code column" HeaderText="Specie Code" ReadOnly="True" ShowNoSortIcon="False" SortExpression="c_species_code" UniqueName="c_species_code">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="c_species_name" FilterControlAltText="Filter c_species_name column" HeaderText="Specie Name" ReadOnly="True" ShowNoSortIcon="False" SortExpression="c_species_name" UniqueName="c_species_name">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="c_seasoning_code" FilterControlAltText="Filter c_seasoning_code column" HeaderText="Seasoning Code" ReadOnly="True" ShowNoSortIcon="False" SortExpression="c_seasoning_code" UniqueName="c_seasoning_code">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="c_seasoning_describe" FilterControlAltText="Filter c_seasoning_describe column" HeaderText="Seasoning Name" ReadOnly="True" ShowNoSortIcon="False" SortExpression="c_seasoning_describe" UniqueName="c_seasoning_describe">
                        </telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="c_density" DataType="System.Decimal" FilterControlAltText="Filter c_density column" HeaderText="Density" ReadOnly="True" ShowNoSortIcon="False" SortExpression="c_density" UniqueName="c_density">
                            <HeaderStyle Width="10%" />
                            <ItemStyle Width="10%" />
                        </telerik:GridBoundColumn>
                        <telerik:GridEditCommandColumn UniqueName="EditCommandColumn">
                        </telerik:GridEditCommandColumn>
                        <telerik:GridButtonColumn CommandName="Delete" Text="Delete">
                        </telerik:GridButtonColumn>
                    </Columns>

                    <EditFormSettings EditFormType="Template">
                        <EditColumn ShowNoSortIcon="False" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
                        <FormTemplate>
                            <table id="Table2" cellspacing="2" cellpadding="1" width="100%" border="0" rules="none"
                                style="border-collapse: collapse;">
                                <tr class="EditFormHeader">
                                    <td colspan="2">
                                        <b>Density Details</b>
                                        <asp:Label ID="c_id" runat="server" Text='<%# Bind("c_id") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Specie: 
                                    </td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBoxSpecie" runat="server" DataSourceID="edsSpecies" DataTextField="c_species_code" DataValueField="c_id"
                                            SelectedValue='<%# Bind("c_species_id") %>'>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Seasoning:  
                                    </td>
                                    <td>
                                        <telerik:RadComboBox ID="RadComboBoxSeasoning" runat="server" DataSourceID="edsSeasoning" DataTextField="c_seasoning_code" DataValueField="c_id"
                                            SelectedValue='<%# Bind("c_seasoning_id") %>'>
                                        </telerik:RadComboBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Seasoning:  
                                    </td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBoxDensity" runat="server" Text='<%# Bind("c_density") %>' ></telerik:RadTextBox> 
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="btnUpdate" Text='<%# IIf((TypeOf (Container) Is GridEditFormInsertItem), "Insert", "Update") %>'
                                            runat="server" CommandName='<%# IIf((TypeOf (Container) Is GridEditFormInsertItem), "PerformInsert", "Update")%>'></asp:Button>&nbsp;
                                    <asp:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="False"
                                        CommandName="Cancel"></asp:Button>
                                    </td>
                                </tr>
                            </table>

                        </FormTemplate>
                    </EditFormSettings>
                </MasterTableView>

<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>

                <ClientSettings AllowColumnsReorder="True" AllowDragToGroup="True" ReorderColumnsOnClient="True">
                    <Selecting AllowRowSelect="True" />
                    <ClientEvents OnRowDblClick="RowDblClick"></ClientEvents>
                </ClientSettings>

<FilterMenu RenderMode="Lightweight"></FilterMenu>

<HeaderContextMenu RenderMode="Lightweight"></HeaderContextMenu>
            </telerik:RadGrid>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quotemachineConnectionString %>" 
            SelectCommand="SELECT * FROM [View_Density_Specie_Seasoning]"
            UpdateCommand="UPDATE [tbl_density] SET [c_species_id] = @c_species_id, c_seasoning_id = @c_seasoning_id WHERE [c_id] = @c_id"
            InsertCommand="INSERT INTO [tbl_density] (c_species_id, c_seasoning_id, c_density) VALUES (@c_species_id, @c_seasoning_id, @c_density)"
            DeleteCommand="DELETE FROM [tbl_density] WHERE [c_id] = @c_id"
            >

            <UpdateParameters>
                <asp:Parameter Name="c_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="c_species_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="c_seasoning_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>

            <InsertParameters>
                <asp:Parameter Name="c_species_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="c_seasoning_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="c_density" Type="Decimal"></asp:Parameter>
            </InsertParameters>

       <DeleteParameters>
            <asp:Parameter Name="c_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>

        </asp:SqlDataSource>
            <asp:SqlDataSource ID="edsSpecies" runat="server" ConnectionString="Data Source=charles-pc;Initial Catalog=quotemachine;Integrated Security=True;" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tbl_species] ORDER BY [c_species_code]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="edsSeasoning" runat="server" ConnectionString="Data Source=charles-pc;Initial Catalog=quotemachine;Integrated Security=True;" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tbl_seasoning] ORDER BY [c_seasoning_code]"></asp:SqlDataSource>></asp:SqlDataSource>

        <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
            function RowDblClick(sender, eventArgs) {
                sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
            }
        </script>
    </telerik:RadCodeBlock>
</asp:Content>
