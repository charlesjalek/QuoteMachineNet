<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="BL.QuoteMachine.WebForm1" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Density</title>

</head>
<body>
    <form id="form1" runat="server">
                <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>

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

 <div class="demo-container no-bg">
        <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip1"  MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Silk">
            <Tabs>
                <telerik:RadTab Text="My Cook Book" Width="200px"></telerik:RadTab>
                <telerik:RadTab Text="Newest" Width="200px"></telerik:RadTab>
                <telerik:RadTab Text="Top Recipe" Width="200px"></telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
        <telerik:RadMultiPage runat="server" ID="RadMultiPage1"  SelectedIndex="0" CssClass="outerMultiPage">
            <telerik:RadPageView runat="server" ID="RadPageView1">
                <telerik:RadTabStrip RenderMode="Lightweight" runat="server" ID="RadTabStrip2"  MultiPageID="RadMultiPage2"
                    Orientation="VerticalLeft" Skin="Silk" Width="50px" Height="355px" SelectedIndex="0">
                    <Tabs>
                         <telerik:RadTab ImageUrl="images/icon_AllRecipes.png" ToolTip="Main Course" SelectedImageUrl="images/icon_AllRecipes.png" HoveredImageUrl="images/icon_AllRecipes.png" Height="40px"></telerik:RadTab>
                        <telerik:RadTab ImageUrl="images/icon_Desserts.png" ToolTip="Desserts" SelectedImageUrl="images/icon_Desserts.png" HoveredImageUrl="images/icon_Desserts.png" Height="40px"></telerik:RadTab>
                        <telerik:RadTab ImageUrl="images/icon_Soups.png" ToolTip="Soups" SelectedImageUrl="images/icon_Soups.png" HoveredImageUrl="images/icon_Soups.png" Height="40px"></telerik:RadTab>
                        <telerik:RadTab ImageUrl="images/icon_Seafood.png" ToolTip="Seafood" SelectedImageUrl="images/icon_Seafood.png" HoveredImageUrl="images/icon_Seafood.png" Height="40px"></telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
                <telerik:RadMultiPage runat="server" ID="RadMultiPage2"  SelectedIndex="0" CssClass="innerMultiPage">
                    <telerik:RadPageView runat="server" ID="PageView1">
                        <div class="recipeImage qsf-ib">
                            <img src="images/Beef_Stewed.png" alt="image" />
                        </div>
                        <div class="ingredients qsf-ib">
                            <p>Beef Stewed in a Salty Herb Crust</p>
                            <ul>
                                <li>800 gr beef bonfile</li>
                                <li>2 tablespoons olive oil</li>
                                <li>1 tabslespoon butter</li>
                                <li>salt and pepper</li>
                            </ul>
                            <p class="subtitle">For the crust:</p>
                            <ul>
                                <li>120 gr cooking salt </li>
                                <li>200 gr sea salt</li>
                                <li>500 gr butter</li>
                                <li>2 egg whites</li>
                                <li>250 ml water</li>
                                <li>2 tablespoons of rosmarin and salvia</li>
                            </ul>
                        </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView runat="server" ID="PageView2">
                        <div class="recipeImage qsf-ib">
                            <img src="images/Lavender_Ice_Cream.png" alt="image" />
                        </div>
                        <div class="ingredients qsf-ib">
                            <p>Lavender Ice Cream</p>
                            <ul>
                                <li>250 ml cream 35%</li>
                                <li>1 can of condensed milk</li>
                                <li>1 can of sweetened condensed milk</li>
                                <li>1 vanilla bean</li>
                                <li>1 tablespoon lavender flowers</li>
                            </ul>
                        </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView runat="server" ID="PageView3">
                        <div class="recipeImage qsf-ib">
                            <img src="images/Creamy_Soup.png" alt="image" />
                        </div>
                        <div class="ingredients qsf-ib">
                            <p>Creamy Soup with Port Wine and Cheese</p>
                            <ul>
                                <li>2 tablespoons butter </li>
                                <li>1 onion</li>
                                <li>450 gr carrots</li>
                                <li>500 ml vegetable stock</li>
                                <li>100 gr. Feta cheese</li>
                                <li>3 tablespoons Port wine </li>
                                <li>2 tablespoons fresh dill</li>
                            </ul>
                        </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView runat="server" ID="PageView4">
                        <div class="recipeImage qsf-ib">
                            <img src="images/Clam_Spinach_and_Peanut_Stew.png" alt="image" />
                        </div>
                        <div class="ingredients qsf-ib">
                            <p>Clam, Spinach and Peanut Stew</p>
                            <ul>
                                <li>1 onion</li>
                                <li>30 ml olive oil</li>
                                <li>500 gr white clams</li>
                                <li>100 gr raw peanuts</li>
                                <li>2 small tomatoes</li>
                                <li>100 gr spinach</li>
                                <li>200 gr. rice</li>
                                <li>salt and pepper</li>
                            </ul>
                        </div>
                    </telerik:RadPageView>
                </telerik:RadMultiPage>
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView2">
                <div class="recipeImage qsf-ib">
                    <img src="images/Greek_Moussaka.png" alt="image" />
                </div>
                <div class="ingredients qsf-ib">
                    <p>Greek Moussaka </p>
                    <ul>
                        <li>1 kg eggplant</li>
                        <li>500 gr minced meat</li>
                        <li>100 ml olive oil</li>
                        <li>1 onion</li>
                        <li>100 ml dry white wine</li>
                        <li>600 gr tomatoes</li>
                        <li>1 cinnammon stick</li>
                        <li>0.5 parsley bunch</li>
                        <li>salt and pepper</li>
                    </ul>
                </div>
            </telerik:RadPageView>
            <telerik:RadPageView runat="server" ID="RadPageView3">
                <div class="recipeImage qsf-ib">
                    <img src="images/Chocolate_Cheesecake.png" alt="image" />
                </div>
                <div class="ingredients qsf-ib">
                    <telerik:RadRating RenderMode="Lightweight" ID="RadRating" Skin="Silk" Value="5" runat="server"></telerik:RadRating>
                    <p>Chocolate Cheesecake with Bombardino </p>
                    <ul>
                        <li>150 gr cocoa biscuits </li>
                        <li>80 gr butter</li>
                        <li>0.5 teaspoon cinnammon </li>
                        <li>800 gr cream cheese</li>
                        <li>150 gr sugar</li>
                        <li>100 gr dark chocolate</li>
                        <li>100 gr milk chocolate</li>
                        <li>1 teaspoon vanilla extract</li>
                        <li>3 eggs</li>
                        <li>100 ml Bombardino liquer</li>
                    </ul>
                </div>
            </telerik:RadPageView>
        </telerik:RadMultiPage>
        <div class="disclaimer">
            <p>
                The images and recipies have been adjusted for the purpose of this demo.
                The originals belong to <b>kulinarno-joana.com</b>.
            </p>
        </div>
    </div>

       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=quotemachine;Integrated Security=True;" ProviderName="System.Data.SqlClient" 
           SelectCommand="SELECT * FROM [tbl_bl_grades]" 
           DeleteCommand="DELETE FROM [tbl_bl_grades] WHERE [c_id] = @c_id" 
           InsertCommand="INSERT INTO [tbl_bl_grades] ([c_bl_grade_code], [c_bl_grade_describe]) VALUES (@c_bl_grade_code, @c_bl_grade_describe)" 
           UpdateCommand="UPDATE [tbl_bl_grades] SET [c_bl_grade_code] = @c_bl_grade_code, [c_bl_grade_describe] = @c_bl_grade_describe WHERE [c_id] = @c_id">
           <DeleteParameters>
               <asp:Parameter Name="c_id" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="c_bl_grade_code" Type="String" />
               <asp:Parameter Name="c_bl_grade_describe" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="c_bl_grade_code" Type="String" />
               <asp:Parameter Name="c_bl_grade_describe" Type="String" />
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

    </form>
</body>
</html>
