<%@ Page Title="" Language="C#" MasterPageFile="~/Header2.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Project_Final.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/Product.css" rel="stylesheet" />
    <div class="product">
        <div class="Product-Header">
            <img src="//theme.hstatic.net/1000306701/1000395973/14/breadcrumb_bg.png?v=1158"  />
        </div>
        <div class="Product-Content">
           <ul>
               <li>
                    <a href="BanHang.aspx">Trang Chủ</a>
               </li>
               <li>
                   <p>Tạo Kiểu Tóc</p>
               </li>
               <li>
                   <p>Sáp Glanzen Clay 60g - Sáp Chính Hãng Bán Chạy Số 1 Thị Trường</p>
               </li>
           </ul>
        </div>
        <div class="Category">
            <div></div>
            <% foreach (Project_Final.entity.Items it in list)  { %>
                <div class="category-content-main">
                 
                <div class="Category-image">
                    <img src="images\Ban Hang 30shine_files\<%= it.Url %>" />
                </div>
                <div class="Category-content">
                    <div class="Header-content">
                        <h2><%= it.Name %></h2>
                    </div>
                    <div class="Header-content">
                        <div class="Header-content-view">
                            <div>
                                 Gia:
                            </div>
                            <div>
                                <h3><%= it.Price %> đ <s><%= it.PriceDiscount %></s></h3> 
                            </div>
                            
                        </div>
                        <div> </div>
                        
                    </div>
                    <div class="content-main-dd">
                        <ul>
                            <li>
                                <%= it.Content1 %>
                            </li>
                        </ul>
                    </div>
                    <div class="Category-quantity">
                        <div>
                            <span>Số Lượng </span>
                        </div>
                         <div>
                             <asp:TextBox ID="txtQuantity"  runat="server"></asp:TextBox>
                         </div>
                        <div></div>
                    </div>
                    <div class="Category-footer">
                    <div class="category-left">
                       <a href="GioHang.aspx">
                            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Them Gio hang" CssClass="btn btn-success" />
                       </a>
                    </div>
                    <div class="category-right">
                        <a href="History.aspx?productID=<%= it.ID %>" > Mua Ngay </a>
                    </div>
                       <div></div>
                </div>
                   
                </div>
                 <div class="Category-list-image">
                        <div></div>
                        <div class="image">
                            <div class="item-image">
                                 <img src="images\Ban Hang 30shine_files\<%= it.Url %>" />
                            </div>
                              <div class="item-image">
                                 <img src="images\Ban Hang 30shine_files\<%= it.Url %>" />
                            </div>
                             <div class="item-image">
                                 <img src="images\Ban Hang 30shine_files\<%= it.Url %>" />
                            </div>
                             <div class="item-image">
                                 <img src="images\Ban Hang 30shine_files\<%= it.Url %>" />
                            </div>
                        </div>
                        
               </div>
            
            </div> 
             <% } %>
        </div>
        <div class="description-footer">
            <div></div>
             <% foreach (Project_Final.entity.Items it in list) { %>
            <div class="footer-content-description">
                    <p>
                        <%= it.DesCription %>
                    </p>
            </div>
             <%} %>
        </div>
    </div>
</asp:Content>
