<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/NguoiDung/GiaoDienNguoiDung.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.GiaoDienNguoiDung1" %>
<%@ Register src="UserControl/TinXemNhieu.ascx" tagname="TinXemNhieu" tagprefix="uc1" %>
<%@ Register src="UserControl/TinMoi.ascx" tagname="TinMoi" tagprefix="uc1" %>
<%@ Register src="UserControl/TinNoiBat.ascx" tagname="TinNoiBat" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="left">
        <div class="left_TinChinh">
            Nổi bật
        </div>
        <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 100px; clear: both;" />
        <div class="left_NoiDung">
            <uc1:TinNoiBat runat="server" ID="TinNoiBat" />
        </div>
    </div>
    <div class="right">
        <div class="right_TinLienQuan">
            <div class="tieude_tinlienquan">
                Tin mới
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 115px; clear: both;" />
            <div class="right_NoiDung">
                <uc1:TinMoi runat="server" ID="TinMoi" />
            </div>
        </div>
        <div class="right_QuangCao">
            <img src="Images%20QC/pepsi_lon.gif" style="width:259px; height:490px;" />
        </div>
    </div>
    <div class="left1">
        <uc1:TinXemNhieu runat="server" ID="TinXemNhieu" />
    </div>
    <div class="tintrongloai">
        <div class="left2">
            <div class="tieude_bongdaanh">
                Bóng đá Việt Nam
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <div class="left2_NoiDung">
                <asp:Repeater runat="server" ID="rpt">
                    <ItemTemplate>
                        <div style="clear: both">
                        </div>
                        <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 10px; margin-bottom: 7px;" />
                        <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                        <p style="padding: 10px;">
                            <%#Eval("TomTat") %>
                        </p>
                        <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="clr">
        </div>
        <div class="left3">
            <div class="tieude_bongdavietnam">
                Bóng đá Anh
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <asp:Repeater runat="server" ID="Repeater1">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 7px; margin-bottom: 7px;" />
                    <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                    <p style="padding: 10px;">
                        <%#Eval("TomTat") %>
                    </p>
                    <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clr">
        </div>
        <div class="left4">
            <div class="tieude_bongdaquocte">
                Bóng đá quốc tế
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <asp:Repeater runat="server" ID="Repeater2">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 7px; margin-bottom: 7px;" />
                    <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                    <p style="padding: 10px;">
                        <%#Eval("TomTat") %>
                    </p>
                    <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clr">
        </div>
        <div class="left5">
            <div class="tieude_quanvot">
                Quần vợt
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <asp:Repeater runat="server" ID="Repeater3">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 7px; margin-bottom: 7px;" />
                    <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                    <p style="padding: 10px;">
                        <%#Eval("TomTat") %>
                    </p>
                    <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clr">
        </div>
        <div class="left6">
            <div class="tieude_bongchuyen">
                Bóng chuyền
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <asp:Repeater runat="server" ID="Repeater4">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 7px; margin-bottom: 7px;" />
                    <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                    <p style="padding: 10px;">
                        <%#Eval("TomTat") %>
                    </p>
                    <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clr">
        </div>
        <div class="left7">
            <div class="tieude_thethao">
                Thể thao
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <asp:Repeater runat="server" ID="Repeater5">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 7px; margin-bottom: 7px;" />
                    <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                    <p style="padding: 10px;">
                        <%#Eval("TomTat") %>
                    </p>
                    <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clr">
        </div>
        <div class="left8">
            <div class="tieude_dulieubongda">
                Dữ liệu bóng đá
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <asp:Repeater runat="server" ID="Repeater6">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 7px; margin-bottom: 7px;" />
                    <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                    <p style="padding: 10px;">
                        <%#Eval("TomTat") %>
                    </p>
                    <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clr">
        </div>
        <div class="left9">
            <div class="tieude_hautruong">
                Hậu trường
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <asp:Repeater runat="server" ID="Repeater7">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 7px; margin-bottom: 7px;" />
                    <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                    <p style="padding: 10px;">
                        <%#Eval("TomTat") %>
                    </p>
                    <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clr">
        </div>
        <div class="left10">
            <div class="tieude_chuyenthethao">
                Chuyện thể thao
            </div>
            <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 145px; clear: both;" />
            <asp:Repeater runat="server" ID="Repeater8">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float: left; margin-right: 7px; margin-bottom: 7px;" />
                    <h4><a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></h4>
                    <p style="padding: 10px;">
                        <%#Eval("TomTat") %>
                    </p>
                    <h4 style="font-size: 10px;"><%#Eval("NgayDang") %></h4>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="tintrongloai_right">
        <div class="ttl">
        <div class="bongdavietnam">
            <asp:Repeater runat="server" ID="Repeater9">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 50px;margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clr"></div>
        <div class="bongdaanh">
            <asp:Repeater runat="server" ID="Repeater10">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 45px;margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="bongdaquocte">
            <asp:Repeater runat="server" ID="Repeater11">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 80px; width: 200px;margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="quanvot">
            <asp:Repeater runat="server" ID="Repeater12">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 70px; width: 200px;margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="clr"></div>

        <div class="bongchuyen">
            <asp:Repeater runat="server" ID="Repeater13">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 80px; width: 200px;margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="clr"></div>

        <div class="thethao">
            <asp:Repeater runat="server" ID="Repeater14">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 50px; width: 200px;margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="clr"></div>

        <div class="dulieubongda">
            <asp:Repeater runat="server" ID="Repeater15">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 40px; width: 200px;margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="clr"></div>

        <div class="hautruong">
            <asp:Repeater runat="server" ID="Repeater16">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 60px; width: 200px;margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="clr"></div>

        <div class="chuyenthethao">
            <asp:Repeater runat="server" ID="Repeater17">
                <ItemTemplate>
                    <div style="clear: both">
                    </div>
                        <p style="margin-top: 90px; width: 200px; margin-left: 2px;"><a style="text-decoration: none; color: #666;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        </div>
        <div class="quangcao">
            <img src="Images%20QC/406608956927273.gif" style="position:absolute; width:260px;margin-top:20px" />
            <img src="Images%20QC/406608956927273.gif" style="position:absolute; width:260px;margin-top:250px"/>
            <img src="Images%20QC/180x1030_m88_media_bonus.gif" style="position:absolute; width: 260px; margin-top:480px;" />
        </div>
    </div>

    <div class="clr">
    </div>
    <br />
    <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 1100px; clear: both;" />
  
    <br />
    <h3>Link Facebook thể thao : </h3>
    <br />

    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0">
    </script>
    <div class="fb-page" data-href="https://www.facebook.com/Tin-t&#x1ee9;c-th&#x1ec3;-thao-108200634200656" data-tabs="timeline, events, messages" data-width="" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-friend="true">
        <blockquote cite="https://www.facebook.com/Tin-t&#x1ee9;c-th&#x1ec3;-thao-108200634200656" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Tin-t&#x1ee9;c-th&#x1ec3;-thao-108200634200656">Tin tức thể thao</a></blockquote>
    </div>
    <br />
    <br />
    <div class="clr"></div>
    <br />
    <hr style="border: 1px solid #ff0000; margin-bottom: 2px; width: 1100px; clear: both;" />
    <div id="footer" style="background-color:white">             
                  <div>
                      <br />
                      <h3>Bản đồ:</h3>
                      <br />
                   <div >
                       <iframe style="width:1100px;height:250px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.3542455613465!2d105.77976975168298!3d21.05850910620527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab2aba129325%3A0x1f72e665dbc0db5b!2zNDMgQ-G7lSBOaHXhur8sIEPhu5UgTmh14bq_IDEsIFThu6sgTGnDqm0sIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1484555866770" width="600" height="450" frameborder="0" style="border:0" allowfullscreen=true></iframe>
                      </div>
                  </div>  
                  <div class="container" style="margin-top:63px;">
                        <div class="col-md-4">
                            <div class="footer_container">
                                <h3>TRANG THỂ THAO TIN TỨC ĐỜI SỐNG :</h3>
                                <h3>Địa chỉ: Cầu Giấy, Bắc Từ Liêm, Hà Nội</h3>
                                <h3>Điện thoại: 0123456789</h3>
                                <h3>Email:quangtruong@gmail.com</h3>
                                <h3>Website:tintucthethao.vn</h3>
                            </div>
                        </div>                 
                        <div class="col-md-4">
                            <div class="footer_container">
                                <h3>Số người online : 1</h3>                            
                            </div>
                        </div>
                  </div>
     </div>
</asp:Content>










