<%@
Page Language="C#"
AutoEventWireup="true"
CodeBehind="Index.aspx.cs"
MasterPageFile="~/NetView/Master.master"
Inherits="Laundry_MVC.NetView.Service.Index"
ViewStateMode="Disabled" EnableViewState="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentMaster" runat="server">
     
    <style>
        .data-grid a /** FOR THE PAGING ICONS **/
        {
            background-color: Transparent;
            padding: 5px 8px;  
            text-decoration: none;
            font-weight: bold;
            border: 1px solid #dee2e6;
            color: #333333;
        }
        
        .data-grid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
        {
            background-color: #1890ff;
            color: #fff;
        }
        .data-grid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
        {
            background-color: #1890ff;
            color: #fff;
            padding: 5px 8px;
        }
        .pager
        {
            background-color: lightskyblue;       
            color: White;
            height: 30px;
            text-align: left;
        }
        
        .data-grid td
        {
           padding: 5px 8px;
        }
        .data-grid th
        {
            padding: 5px 8px;
        }
    </style>
    
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Service</h3>
        </div>
            <asp:DropDownList runat="server" ID="CategoryId" OnSelectedIndexChanged="CategoryId_OnSelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Text="1" Value="1"/>
                <asp:ListItem Text="2" Value="2"/>
            </asp:DropDownList>    
            
            <asp:TextBox runat="server" ID="txtStatus"/>
        
            <asp:DropDownList CssClass="form-control form-control-sm" 
                              Width="70px" 
                              ID="PageSize" 
                              runat="server" 
                              AutoPostBack="true" 
                              OnSelectedIndexChanged="PageSize_OnSelectedIndexChanged">
                <asp:ListItem Text="10" Value="10"/>
                <asp:ListItem Text="20" Value="20"/>
                <asp:ListItem Text="50" Value="50"/>
                <asp:ListItem Text="100" Value="100"/>
                <asp:ListItem Text="All" Value="1000"/>
            </asp:DropDownList>
        <!-- /.box-header -->
        <div class="table-responsive">
            
            
            <asp:GridView
                Width="100%"
                GridLines="None"
                AllowPaging="True"
                OnPageIndexChanging="DGView_PageIndexChanging"
                PagerStyle-CssClass="data-grid"
                CssClass="table table-striped table-bordered table-hover" 
                runat="server" 
                ID="DGView">
            </asp:GridView>
        </div>
    </div>
</asp:Content>