<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project_Final.GioiThieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Main-body">
        <link rel="stylesheet" type="text/css" href="css/cssGioiThieu.css" />
        <link rel="stylesheet" type="text/css" href="css/cssDichVu30Shine.css" />
        <!--content -->
        <div class="row " id="content-1">
            <div class="col">
                <div id="demo" class="carousel slide" data-ride="carousel">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>

                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://storage.30shine.com/banner/20200625_DT_DM_w.jpg" alt="Los Angeles" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                            <img src="https://storage.30shine.com/banner/20200521_banner_uon_w.png" alt="Chicago" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                            <img src="https://storage.30shine.com/banner/20200707_bannerstore_w.png" alt="New York" width="1100" height="500">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>
        </div>
        <hr width="80%" size="100px" align="center" />

        <div class="row" id="Service-Content">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="Header-service" class="header-service">
                            <a href="#LinkContent">DỊCH VỤ TẠI 30SHINE</a>
                        </div>
                    </div>
                    <hr width="100%" size="50px" align="center" />

                    <div class="col-sm-12">
                       
                        <div class="row">
                             <% foreach (Project_Final.entity.ServiceType st in listSevice) { %>
                            <div class="col-sm-2" id="item-service">
                                 <a href="Home.aspx?id=<%= st.ID %>">
                                     <span><%= st.Name %></span>
                                    <img src="<%= st.Url %>" style="width:20px;height:20px;" />

                                 </a>
                            </div>
                            <%} %>
                        </div>
                       
                    </div>
                    <div class="col-sm-12">
                        <div class="row">
                            <%foreach (Project_Final.entity.Service st in arr){ %>
                            <div class="col-sm-2" id="img-service">
                                <img src="<%= st.Url %>" style="width:215px;height:345px;" class="rounded" />
                                <h3><%= st.Price %></h3>
                            </div>
                           <%} %>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
        <hr width="80%" size="100px" align="center" />
        <div class="row">

            <div class="col"></div>
            <div class="col" id="Content-video">
                <h2>TẬN HƯỞNG COMBO 7 BƯỚC THƯ GIÃN TỎA SÁNG </h2>
                <p>
                    Đá bay mệt mỏi mùa hè với 7 bước Combo mới duy nhất tại The Barber Shop. 
                        Trọn gói chỉ 100K, hoàn toàn thư giãn và sau đó bạn sẽ đẹp trai hoàn hảo!
                </p>
                <p>
                    Hãy để dàn Stylist đẳng cấp và Skinner Girl xinh đẹp giúp bạn toả sáng và 
                        tận hưởng những giây phút thư giãn sau ngày làm việc mệt nhoài!
                </p>
                <img src="images/shine.png">
            </div>

            <div class="col">
                <video preload="auto" autoplay="true" loop="loop" muted volume="10" width="fluid" height="500">
                    <source src="images/shine.mp4" type="video/mp4">
                </video>
            </div>
            <div class="col"></div>
        </div>
        <hr width="80%" size="100px" align="center" />

        <div class="row">
            <div class="col"></div>
            <div class="col" id="content-seven-step">
                <h2>1/ RỬA MẶT SÁNG DA, SẠCH BÃ NHỜN</h2>
                <br>
                <img src="images/rua.jpg">
                <p>
                    Quy trình rửa mặt thiết kế riêng cho phái mạnh cuốn trôi bụi bẩn & tế bào chết, 
                        mang đến cho bạn làn da sạch khỏe, không bóng nhờn. Skinner girl với đôi tay mềm 
                        mại massage khắp khuôn mặt, ve vuốt từ vành tai đến sau gáy giúp các chàng trai 
                        thư giãn phục hồi sinh lực.
                </p>
            </div>
            <div class="col" id="content-seven-step">
                <h2>2/ CHĂM SÓC DA MẶT BẰNG CNC</h2>
                <br>
                <img src="images/chamsoc.jpg">
                <p>
                    Lột bay hết mụn cám bởi thiết bị độc quyền chỉ có tại The Barber Shop. Làn da mặt nhạy 
                        cảm sẽ được giữ ẩm bởi tinh chất hoa hồng chỉ có ở Spa cao cấp, giúp các chàng trai sở 
                        hữu ngay khuôn mặt sáng, mịn, cuốn hút phái nữ.
                </p>
            </div>

            <div class="col" id="content-seven-step">
                <h2>3/ GỘI ĐẦU MASSAGE BẤM HUYỆT</h2>
                <br>
                <img src="images/goidau.jpg">
                <p>
                    Tận hưởng suối nước mát lạnh lan toả khắp mái đầu. Đôi tay Skinner Girl khéo léo massage 
                        bấm huyệt đưa bạn chìm vào cảm giác khoan khoái, quên hết mọi ưu phiền cuộc sống.
                </p>
            </div>
            <div class="col"></div>
        </div>

        <hr width="50%" size="50px" align="center" />

        <div class="row">
            <div class="col"></div>
            <div class="col" id="content-seven-step">
                <h2>4/ TƯ VẤN KIỂU TÓC THEO KHUÔN MẶT</h2>
                <br>
                <img src="images/tuvan.jpg">
                <p>
                    Stylist tại The Barber Shop sẽ tư vấn chọn kiểu đẹp trai nhất phù hợp với những đặc điểm riêng 
                        (khuôn mặt, chất tóc…) của các chàng trai theo BST kiểu tóc chuyên nam độc quyền 2020.
                </p>
            </div>
            <div class="col" id="content-seven-step">
                <h2>5/ CẮT TẠO KIỂU BỞI STYLIST HÀNG ĐẦU</h2>
                <br>
                <img src="images/cat.jpg">
                <p>
                    20 năm để mãi 1 mái tóc, đã đến lúc bạn hãy lột xác. Đội ngũ Stylist chuyên nam đẳng cấp VN tự 
                        tin sáng tạo cho bạn những kiểu tóc vượt xa mong đợi.
                </p>
            </div>

            <div class="col" id="content-seven-step">
                <h2>6/ CẠO MẶT ÊM ÁI - GỘI XẢ KỸ CÀNG</h2>
                <br>
                <img src="images/cao.jpg">
                <p>
                    Cạo mặt êm ái giúp da sáng mịn. Gội xả kỹ càng sau cắt để bạn luôn hoàn hảo trước mỗi buổi hẹn quan trọng. 
                        Không lo tóc con bám dính nhờ giấy cuốn cổ đặc biệt từ The Barber Shop, chẳng cần lo lắng gội xả lại khi về nhà.
                </p>
            </div>
            <div class="col"></div>
        </div>

        <hr width="50%" size="50px" align="center" />

        <div class="row">
            <div class="col"></div>
            <div class="col" id="content-seven-step">
                <h2>7/VUỐT SÁP/GÔM TẠO KIỂU CAO CẤP</h2>
                <br>
                <img src="images/vuot.jpg">
                <p>
                    The Barber Shop sử dụng 100% sáp gôm cao cấp giúp giữ nếp hoàn hảo dù bạn đội mũ BH. Sáp cao cấp giúp tóc chắc khoẻ 
                        tránh gàu, gãy rụng so với loại thường.
                </p>
            </div>
            <div class="col"></div>
            <div class="col"></div>
            <div class="col"></div>
        </div>

        <hr width="50%" size="50px" align="center" />

        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-8">
                <h3>BÍ QUYẾT ĐẸP TRAI TỪ 30SHINE</h3>
                <hr width="100%" size="50px" align="center" />
                <% foreach (Project_Final.entity.News nt in listNews) { %>
                <div class="row">
                    <div class="col-sm-12" id="content-30shine">
                        <div class="row">
                            <div class="col-sm-4">
                                <img src="<%= nt.Url %>"" />

                            </div>
                            <div class="col-sm-8">
                                <a href="#linktrangmoi"><%= nt.Title %>
                                </a>
                                <p>
                                    <%= nt.Content %> 
                                </p>
                            </div>
                        </div>
                    </div>
                    <hr width="100%" size="50px" align="center" />
                   
                </div>
                <% } %>
            </div>
            <div class="col-sm-2">
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

    </div>
</asp:Content>
