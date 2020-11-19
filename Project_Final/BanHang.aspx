<%@ Page Title="" Language="C#" MasterPageFile="~/Header2.Master" AutoEventWireup="true" CodeBehind="BanHang.aspx.cs" Inherits="Project_Final.BanHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" type="text/css" href="css/BanHang.css"/>
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" rel="stylesheet"/>
    <div class="wrapper">
        <div class="item-column-1">
         

        </div>
        <div class="item-column-2">
            <div class="Section-1">

            </div>

            <div class="Section-2">
                <div class="title-01">
                    <h2>DANH MỤC SẢN PHẨM</h2>
                    <div class="line-title">
                         <span class="span-left"></span>
                         <span class="span-right"></span>
                    </div>
                   
                    <div class="list-image">
                         <% foreach (Project_Final.entity.ItemsType lt in list) { %>
                        <div>
                            <img src="<%= lt.Url %>"/>
                            <h3><%= lt.Name %></h3>
                        </div>
                         <% } %>
                    </div>
                   
                </div>
            </div>
            <div class="Section-3">
                <div class="item1">
                    <div class="item1-icon">
                       <img src="images\Ban Hang 30shine_files\policy_icon_1.jpg" alt="icon"/>
                    </div>
                    <div class="item1-description">
                        <div class="description-header">
                            VẬN CHUYỂN TỨC THỜI
                        </div>
                        <div class="description-footer">
                            free Ship Đơn Hàng chỉ từ 300k
                        </div>
                    </div>
                </div>
                <div class="item1">
                    <div class="item1-icon">
                       <img src="images\Ban Hang 30shine_files\policy_icon_2.jpg" alt="icon"/>
                    </div>
                    <div class="item1-description">
                        <div class="description-header">
                           CHẤT LƯỢNG ĐẢM BẢO
                        </div>
                        <div class="description-footer">
                            Hơn 200 Thương Hiệu hàng đầu Thế Giới
                        </div>
                    </div>
                </div>
                <div class="item1">
                    <div class="item1-icon">
                       <img src="images\Ban Hang 30shine_files\policy_icon_3.jpg" alt="icon"/>
                    </div>
                    <div class="item1-description">
                        <div class="description-header">
                           ĐỔI TRẢ TRÊN TOÀN HỆ THỐNG
                        </div>
                        <div class="description-footer">
                            Miễn Phí Trong Vòng 30 Ngày
                        </div>
                    </div>
                </div>
                <div class="item1">
                    <div class="item1-icon">
                       <img src="images\Ban Hang 30shine_files\policy_icon_4.jpg" alt="icon"/>
                    </div>
                    <div class="item1-description">
                        <div class="description-header">
                            VẬN CHUYỂN TỨC THỜI
                        </div>
                        <div class="description-footer">
                            free Ship Đơn Hàng chỉ từ 300k
                        </div>
                    </div>
                </div>
            </div>
            <div class="Section-4">
                <div class="header-text">
                    <div class="text-center">
                        <h2>Sản Phẩm HOT</h2>
                    </div>
                    <div class="span-text">
                        <span class="left"></span>
                        <span class="right"></span>
                    </div>
                </div>
                <div class="div-tab">
                    <div></div>
                   
                        <div class="div-buttom">   
                             <% foreach(Project_Final.entity.ItemsType it in list){ %>
                                <div class="item1-button">
                                     <a href="BanHang.aspx?id=<%= it.ID %>"><%= it.Name %></a>
                                </div>
                            <%}%>
                        </div>
                    
                    <div></div>
                </div>
                <div class="load-category">
                    <div></div>
                    <div class="item-category">
                        <% foreach (Project_Final.entity.Items at in listcategory){%>
                        <div class="item-image-description">
                            
                            <div class="product">
                                <a href="Product.aspx?id=<%= at.ID %>">
                                    <img src="images\Ban Hang 30shine_files\<%= at.Url %>" style="width:287px;height:287px;" />
                                </a>
                            </div>
                            <div class="description">
                                <label><%= at.Name %></label>
                            </div>
                            <div class="price">
                               <span><%= at.Price %> đ</span>
                                <s><%= at.PriceDiscount %></s>
                            </div>
                            
                        </div>
                        <% } %>
                    </div>
                    <div></div>
                </div>
            </div>
            <div class="Section-3">
                <div class="item1">
                    <div class="item1-icon">
                       <img src="images\Ban Hang 30shine_files\policy_icon_1.jpg" alt="icon"/>
                    </div>
                    <div class="item1-description">
                        <div class="description-header">
                            VẬN CHUYỂN TỨC THỜI
                        </div>
                        <div class="description-footer">
                            free Ship Đơn Hàng chỉ từ 300k
                        </div>
                    </div>
                </div>
                <div class="item1">
                    <div class="item1-icon">
                       <img src="images\Ban Hang 30shine_files\policy_icon_2.jpg" alt="icon"/>
                    </div>
                    <div class="item1-description">
                        <div class="description-header">
                           CHẤT LƯỢNG ĐẢM BẢO
                        </div>
                        <div class="description-footer">
                            Hơn 200 Thương Hiệu hàng đầu Thế Giới
                        </div>
                    </div>
                </div>
                <div class="item1">
                    <div class="item1-icon">
                       <img src="images\Ban Hang 30shine_files\policy_icon_3.jpg" alt="icon"/>
                    </div>
                    <div class="item1-description">
                        <div class="description-header">
                           ĐỔI TRẢ TRÊN TOÀN HỆ THỐNG
                        </div>
                        <div class="description-footer">
                            Miễn Phí Trong Vòng 30 Ngày
                        </div>
                    </div>
                </div>
                <div class="item1">
                    <div class="item1-icon">
                       <img src="images\Ban Hang 30shine_files\policy_icon_4.jpg" alt="icon"/>
                    </div>
                    <div class="item1-description">
                        <div class="description-header">
                            VẬN CHUYỂN TỨC THỜI
                        </div>
                        <div class="description-footer">
                            free Ship Đơn Hàng chỉ từ 300k
                        </div>
                    </div>
                </div>
            </div>
            <div class="Section-5">
                <div></div>
                <div class="content-facebook">
                     <div class="hair-hot">
            <div class="text-header">
                <h3>BXH TOC HOT THANG NAY</h3>
            </div>
            <div class="row header-showimage">
                <div class="col-sm-2">
                    <div class="imge-item">
                        <img src="https://storage.30shine.com/stylist/style-master/2210/efd4e830-166a-4c6a-8d74-1c0dd1c2f26b"
                            style="width:203px;height:274px;" alt="icon" />
                    </div>
                    <div class="show-item">
                        <div class="icon-item">
                            <i class="far fa-thumbs-up"></i>
                        </div>
                        <div class="text-item">
                            <p>2000 like</p>
                        </div>
                    </div>

                </div>
                <div class="col-sm-2">
                    <div class="imge-item">
                        <img src="https://storage.30shine.com/stylist/style-master/3980/c4b3d9a7-8f26-4a43-b665-49c0c582cfec" style="width:203px;height:274px;"/>
                    </div>
                    <div class="show-item">
                        <div class="icon-item">
                            <i class="far fa-thumbs-up"></i>
                        </div>
                        <div class="text-item">
                            <p>2000 like</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="imge-item">
                        <img src="https://storage.30shine.com/stylist/style-master/2633/25d2c041-5c62-4025-b405-0835f09a94a5"  style="width:203px;height:274px; " />
                    </div>
                    <div class="show-item">
                        <div class="icon-item">
                            <i class="far fa-thumbs-up"></i>
                        </div>
                        <div class="text-item">
                            <p>2000 like</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="imge-item">
                        <img src="https://storage.30shine.com/stylist/style-master/2236/1665323b-1424-4216-8dd0-1705ddcaac2e"
                            style="width:203px;height:274px; "/>
                    </div>
                    <div class="show-item">
                        <div class="icon-item">
                            <i class="far fa-thumbs-up"></i>
                        </div>
                        <div class="text-item">
                            <p>2000 like</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="imge-item">
                        <img src="https://storage.30shine.com/stylist/style-master/2210/efd4e830-166a-4c6a-8d74-1c0dd1c2f26b"
                            style="width:203px;height:274px;" alt="icon" />
                    </div>
                    <div class="show-item">
                        <div class="icon-item">
                            <i class="far fa-thumbs-up"></i>
                        </div>
                        <div class="text-item">
                            <p>2000 like</p>
                        </div>
                    </div>

                </div>
            </div>

        </div>
                </div>
                <div></div>
            </div>
        </div>
        <div class="item-column-3">
            
        </div>
    </div>
        
</asp:Content>
