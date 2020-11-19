<%@ Page Title="" Language="C#" MasterPageFile="~/Header2.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="Project_Final.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/Giohang.css" rel="stylesheet" />
    <div class="Content-GioHang">
        <div class="image-header">
            <img src="//theme.hstatic.net/1000306701/1000395973/14/breadcrumb_bg.png?v=1158" style="width:100%" />
        </div>
        <div class="body-GioHang">
            <div></div>
            <div class="Content-GioHang-category">
                <div class="Header-GioHang">
                    <a href="Home.aspx">Trang Chủ / Giỏ Hàng của bạn - 30shine Store</a>

                </div>
                <div class="header-1">
                    <h2>Giỏ Hàng</h2>
                </div>
                <div class="Header-Menu">
                    <div>Thông Tin chi tiết Sản Phẩm</div>
                    <div>Đơn Giá</div>
                    <div>Số Lượng</div>
                    <div>Tổng Giá</div>
                </div>
                
                <div class="body-giohang">
                   <% foreach (Project_Final.entity.Items it in listItem) { %>
                    <div>
                        <img src="images\Ban Hang 30shine_files\<%= it.Url %>" style="width:150px;height:auto;" />
                    </div>
                    <div class="content-body-giohang">
                        <h3> <%= it.Name %></h3>
                    </div>
                    <div><%= it.Price %></div>
                    <div>
                        <%= value %>
                    </div>
                    <div><%= total %></div>
                      <% } %>
                </div>
                <div class="footer-giohang">
                    <% foreach (Project_Final.entity.Items it in listItem) { %>
                    <div class="footer-left">
                        <span></span>
                        <textarea><%= it.Content1 %></textarea>
                    </div>
                    <div class="footer-right">
                        <p>
                            Tổng Tiền: 
                        </p>
                        <h3><%= total %></h3>
                        <div class="buttom-footer">
                            <asp:Button ID="Button1" runat="server" Text="Cập Nhật" CssClass="btn btn-dark" />

                              <a href="History.aspx?productID=<%= it.ID %>">
                                  Thanh Toan
                              </a>
                        </div>
                        
                    </div>
                    <%} %>
                </div>
              
            </div>
            <div></div>
        </div>
    </div>
</asp:Content>