<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_Final.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="css/FormLogin.css" />
       <div class="mainConent">
        <form action="/action_page.php" method="post">
  <div class="imgcontainer">
    <img src="images\cat.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
      <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>

    <label for="psw"><b>Password</b></label>
      <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        
   <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login"  />
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
    </form>



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
      </div>
</asp:Content>