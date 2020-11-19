<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Project_Final.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="css/History.css" rel="stylesheet" />
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <style type="text/css">
        #txtEmail {
            width: 303px;
            height: 40px;
        }

        #txtAddress {
            width: 537px;
            height: 43px;
        }

        #txtphone {
            width: 229px;
            height: 41px;
        }

        #txtName {
            width: 531px;
            height: 47px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="History">
            <div></div>
            <div class="Content-History">
                <div class="form-add">
                    <h2>30SHINE STORE</h2>
                    <div class="GioHang">
                        <a href="GioHang.aspx">Gio Hang</a>
                        <p>
                            Thông tin vật phẩm
                        <p>Phương thức thanh toán</p>
                        </p>
                    </div>
                    <h2>Thong Tin Gio Hang</h2>
                    <%  Project_Final.entity.Account ac = (Project_Final.entity.Account)Session["account"]; %>
                    <% if (ac == null)
                        { %>
                           <% Response.Redirect("Login.aspx"); %>
                    <% }
                        else
                        { %>
                         <div class="form-add-history">
                        <div>
                          
                            Ho va Ten
                            <asp:TextBox ID="txtFullName" runat="server"> </asp:TextBox>
                        </div>
                        <div class="form-category">
                            <div>
                                Email
                                <asp:TextBox ID="txtEmails" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                Số Điện Thoại
                                <asp:TextBox ID="txtPhones" runat="server" ></asp:TextBox>
                            </div>
                        </div>
                        <div>
                             Địa Chỉ
                            <asp:TextBox ID="txtDiaChi"  runat="server"></asp:TextBox>
                        </div>
                        <div>
                            Enter Date
                            <asp:TextBox ID="txtDates"  runat="server"></asp:TextBox>
                        </div>

                    </div>

                    <% } %>
                    <div class="submit-form">
                        <div class="left">
                            <ul>
                                <li> < </li>
                                <li>
                                    <a href="GioHang.aspx">Giỏ Hàng</a>
                                </li>
                            </ul>
                        </div>
                        <div class="right">
                            <asp:Button ID="btnAddtoOrder" runat="server" OnClick="btnAddtoOrder_Click" Text="Phương Thức Thanh Toán" CssClass="btn btn-success" />
                        </div>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="category-left">
                <div></div>
                    
                <div class="content-footer">
                    <% foreach (Project_Final.entity.Items it in items) { %>
                    <div class="header-history">
                        <img src="images\Ban Hang 30shine_files\<%= it.Url %>" style="width:100px;height:100px;" />
                        <%= it.Name %>
                        <%= it.Price %>
                    </div>
                    <div class="pay-header">
                        <div class="left">
                            <div><p>Tạm tính</p></div>
                            <div><%= count %></div>
                           
                           
                        </div>
                        <div class="right">
                            <div><p>Phí Ship</p></div>
                            <div><%= shipMoney  %></div>
                            
                        </div>
                    </div>
                    <div class="SumMoney">
                        <div> <h3>Tổng Tiền</h3></div>
                       <div><h4><%= result %></h4></div>
                         
                    </div>
                    <%} %>
                </div>
            </div>

            </div>

        </div>
        <div class="Content-Category">
            
            <div></div>
        </div>
        <div></div>

    </form>
</body>

</html>