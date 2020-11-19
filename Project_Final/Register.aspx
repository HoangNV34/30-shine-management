<%@ Page Title="" Language="C#" MasterPageFile="~/Header2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project_Final.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/Register.css" rel="stylesheet" />
    <div class="register">
        <div>
            <img src="//theme.hstatic.net/1000306701/1000395973/14/breadcrumb_bg.png?v=1158" style="width:100%;" />
        </div>
        <div class="register-header">
            <div></div>
            <div>
                <a href="Home.aspx">Trang Chủ / Tạo Tài Khoản</a>
            </div>
        </div>
        <div class="form-register">
            <div></div>
            <div class="form-register-header">
                <div class="header-register">
                    <h3>TẠO TÀI KHOẢN</h3>
                </div>
               
                <div class="register-item">
                        <h3>
                            UserName
                        </h3>
                    <asp:TextBox ID="txtuserName" runat="server"></asp:TextBox>
                </div>
                    
                    <div class="register-item">
                        <h3>
                            password
                        </h3>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </div>
                    <div class="register-item">
                        <h3>
                            txtNames
                        </h3>
                        <asp:TextBox ID="txtNames" runat="server"></asp:TextBox>
                    </div>
                    <div class="register-item">
                        <h3>
                            txtEmails
                        </h3>
                        <asp:TextBox ID="txtEmails" runat="server"></asp:TextBox>
                    </div>
                    <div class="register-item">
                        <h3>
                            txtAddress
                        </h3>
                       <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </div>
                    <div class="register-item">
                        <h3>
                            txtPhones
                        </h3>
                        <asp:TextBox ID="txtPhones" runat="server"></asp:TextBox>
                    </div>
                
                    <div class="gender-register">
                        <div>
                            <asp:RadioButton ID="rbMale" runat="server" Text="Male" />
                        </div>
                        <div>
                            <asp:RadioButton ID="rbFeMale" runat="server" Text="Female" />
                        </div>
                    </div>
               
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                <div class="name-register">
                    <asp:Button ID="btnRegister" runat="server" OnClick="Button1_Click" Text="Đăng Ký"  CssClass="btn btn-dark" />
                </div>
                <div class="content">
                    <a href="BanHang.aspx">Trở về</a>
                </div>
                <div class="register-i">
                    <i class="fab fa-facebook-square"> Đăng ký bằng FaceBook</i>
                </div>
                <div class="register-i">
                    <i class="fab fa-google"> Đăng Nhập Bằng Google</i>
                </div>
            </div>
            <div>

            </div>
        </div>
    </div>
</asp:Content>