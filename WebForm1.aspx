﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="BL.QuoteMachine.WebForm1" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Density</title>

</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
        </telerik:RadStyleSheetManager>
        <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>
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

    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" AutoGenerateDeleteColumn="True"
        AutoGenerateEditColumn="True" DataSourceID="SqlDataSource1" ShowGroupPanel="True" PageSize="15" DataKeyNames="c_id"
        AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" Skin="Office2010Blue" CellSpacing="-1" GridLines="Both" Height="850px">

        <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>

        <ClientSettings AllowColumnsReorder="True" AllowDragToGroup="True" ReorderColumnsOnClient="True">
            <Selecting AllowRowSelect="True" />
            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
        </ClientSettings>

        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="c_id" CommandItemDisplay="TopAndBottom" EditMode="PopUp">
<%--            <ItemTemplate>
                            <telerik:GridMaskedColumn
                DataField="c_finisher_contact_phone""
                HeaderText="Phone Number"
                UniqueName="Phone"
                Mask="(###) ###-#### ####">
                 </telerik:GridMaskedColumn>
            </ItemTemplate>--%>
            <CommandItemSettings ShowExportToCsvButton="True" ShowExportToExcelButton="True" ShowExportToPdfButton="True" ShowExportToWordButton="True" />
            <RowIndicatorColumn ShowNoSortIcon="False" Visible="False"></RowIndicatorColumn>

            <ExpandCollapseColumn ShowNoSortIcon="False" Created="True"></ExpandCollapseColumn>

            <Columns>
                <telerik:GridBoundColumn DataField="c_id" DataType="System.Int32" FilterControlAltText="Filter c_id column" HeaderText="c_id" ReadOnly="True" ShowNoSortIcon="False" SortExpression="c_id" UniqueName="c_id">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="c_finisher_code" FilterControlAltText="Filter c_finisher_code column" HeaderText="Code" ShowNoSortIcon="False" SortExpression="c_finisher_code" UniqueName="c_finisher_code">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="c_finisher_name" FilterControlAltText="Filter c_finisher_name column" HeaderText="Name" ShowNoSortIcon="False" SortExpression="c_finisher_name" UniqueName="c_finisher_name">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="c_finisher_address" FilterControlAltText="Filter c_finisher_address column" HeaderText="Address" ShowNoSortIcon="False" SortExpression="c_finisher_address" UniqueName="c_finisher_address">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="c_finisher_city" FilterControlAltText="Filter c_finisher_city column" HeaderText="City" ShowNoSortIcon="False" SortExpression="c_finisher_city" UniqueName="c_finisher_city">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="c_finisher_state" FilterControlAltText="Filter c_finisher_state column" HeaderText="State" ShowNoSortIcon="False" SortExpression="c_finisher_state" UniqueName="c_finisher_state">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="c_finisher_zip" FilterControlAltText="Filter c_finisher_zip column" HeaderText="Zip" ShowNoSortIcon="False" SortExpression="c_finisher_zip" UniqueName="c_finisher_zip">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="c_finisher_contact_name" FilterControlAltText="Filter c_finisher_contact_name column" HeaderText="Contact ame" ShowNoSortIcon="False" SortExpression="c_finisher_contact_name" UniqueName="c_finisher_contact_name">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="c_finisher_contact_email" FilterControlAltText="Filter c_finisher_contact_email column" HeaderText="Contact email" ShowNoSortIcon="False" SortExpression="c_finisher_contact_email" UniqueName="c_finisher_contact_email">
                </telerik:GridBoundColumn>
<%--                <telerik:GridBoundColumn DataField="c_finisher_contact_phone" FilterControlAltText="Filter c_finisher_contact_phone column" HeaderText="Contact phone" ShowNoSortIcon="False" SortExpression="c_finisher_contact_phone" UniqueName="c_finisher_contact_phone">
                </telerik:GridBoundColumn>--%>

            </Columns>

            <EditFormSettings>
                <EditColumn ShowNoSortIcon="False"></EditColumn>
            </EditFormSettings>
            <AlternatingItemStyle BackColor="#C0FFFF" />
        </MasterTableView>
        <EditItemStyle BorderColor="#FF80FF" HorizontalAlign="Center" />
    </telerik:RadGrid>
        </div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quotemachineConnectionString %>" 
            SelectCommand="SELECT * FROM [tbl_finishers]" 
            DeleteCommand="DELETE FROM [tbl_finishers] WHERE [c_id] = @c_id" 
            InsertCommand="INSERT INTO [tbl_finishers] ([c_finisher_code], [c_finisher_name], [c_finisher_address], [c_finisher_city], [c_finisher_state], [c_finisher_zip], 
            [c_finisher_contact_name], [c_finisher_contact_email], [c_finisher_contact_phone])
            VALUES (@c_finisher_code, @c_finisher_name, @c_finisher_address, @c_finisher_city, @c_finisher_state, @c_finisher_zip, @c_finisher_contact_name, 
            @c_finisher_contact_email, @c_finisher_contact_phone)"  
            UpdateCommand="UPDATE [tbl_finishers] SET [c_finisher_code] = @c_finisher_code, [c_finisher_name] = @c_finisher_name, [c_finisher_address] = @c_finisher_address, [c_finisher_city] = @c_finisher_city, 
            [c_finisher_state] = @c_finisher_state, [c_finisher_zip] = @c_finisher_zip, [c_finisher_contact_name] = @c_finisher_contact_name, [c_finisher_contact_email] = @c_finisher_contact_email, 
            [c_finisher_contact_phone] = @c_finisher_contact_phone WHERE [c_id] = @c_id">
            <DeleteParameters>
                <asp:Parameter Name="original_c_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="c_finisher_code" Type="String" />
                <asp:Parameter Name="c_finisher_name" Type="String" />
                <asp:Parameter Name="c_finisher_address" Type="String" />
                <asp:Parameter Name="c_finisher_city" Type="String" />
                <asp:Parameter Name="c_finisher_state" Type="String" />
                <asp:Parameter Name="c_finisher_zip" Type="String" />
                <asp:Parameter Name="c_finisher_contact_name" Type="String" />
                <asp:Parameter Name="c_finisher_contact_email" Type="String" />
                <asp:Parameter Name="c_finisher_contact_phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="c_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="c_finisher_code" Type="String" />
                <asp:Parameter Name="c_finisher_name" Type="String" />
                <asp:Parameter Name="c_finisher_address" Type="String" />
                <asp:Parameter Name="c_finisher_city" Type="String" />
                <asp:Parameter Name="c_finisher_state" Type="String" />
                <asp:Parameter Name="c_finisher_zip" Type="String" />
                <asp:Parameter Name="c_finisher_contact_name" Type="String" />
                <asp:Parameter Name="c_finisher_contact_email" Type="String" />
                <asp:Parameter Name="c_finisher_contact_phone" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
            function RowDblClick(sender, eventArgs) {
                sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
            }
        </script>

    </telerik:RadCodeBlock>
    </form>
</body>
</html>
