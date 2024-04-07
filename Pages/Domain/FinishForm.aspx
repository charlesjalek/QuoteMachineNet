﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.Master" CodeBehind="FinishForm.aspx.vb" Inherits="BL.QuoteMachine.FinishForm" %>

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
                        <h2>Finish</h2>
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
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
    </telerik:RadStyleSheetManager>
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
            AutoGenerateEditColumn="True" DataSourceID="SqlDataSource1" ShowGroupPanel="True" PageSize="15"
            AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" Skin="Office2010Blue" CellSpacing="-1" GridLines="Both" Height="800px">

            <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>

            <ClientSettings AllowColumnsReorder="True" AllowDragToGroup="True" ReorderColumnsOnClient="True">
                <Selecting AllowRowSelect="True" />
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>

            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="c_id" CommandItemDisplay="TopAndBottom" EditMode="PopUp">
                <CommandItemSettings ShowExportToCsvButton="True" ShowExportToExcelButton="True" ShowExportToPdfButton="True" ShowExportToWordButton="True" />
                <RowIndicatorColumn ShowNoSortIcon="False" Visible="False"></RowIndicatorColumn>

                <ExpandCollapseColumn ShowNoSortIcon="False" Created="True"></ExpandCollapseColumn>

                <Columns>
                    <telerik:GridBoundColumn DataField="c_id" DataType="System.Int32" FilterControlAltText="Filter c_id column" HeaderText="c_id" ReadOnly="True" ShowNoSortIcon="False" SortExpression="c_id" UniqueName="c_id">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="c_finish" FilterControlAltText="Filter c_finish column" HeaderText="Finish" ShowNoSortIcon="False" SortExpression="c_finish" UniqueName="c_finish">
                    </telerik:GridBoundColumn>
                </Columns>

                <EditFormSettings>
                    <EditColumn ShowNoSortIcon="False"></EditColumn>

                </EditFormSettings>
                <AlternatingItemStyle BackColor="#C0FFFF" />
            </MasterTableView>
        </telerik:RadGrid>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=quotemachine;Integrated Security=True;" ProviderName="System.Data.SqlClient"
        SelectCommand="SELECT * FROM [tbl_finish]"
        DeleteCommand="DELETE FROM [tbl_finish] WHERE [c_id] = @c_id"
        InsertCommand="INSERT INTO [tbl_finish] ([c_finish]) VALUES (@c_finish)"
        UpdateCommand="UPDATE [tbl_finish] SET [c_finish] = @c_finish WHERE [c_id] = @c_id">
        <DeleteParameters>
            <asp:Parameter Name="c_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="c_finish" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="c_finish" Type="String" />
            <asp:Parameter Name="c_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
            function RowDblClick(sender, eventArgs) {
                sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
            }
        </script>

    </telerik:RadCodeBlock>
</asp:Content>
