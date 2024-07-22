<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thêm toà nhà</title>
</head>
<body>
    <div class="main-content" >

        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs" id="breadcrumbs">
                    <script type="text/javascript">
                        try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                    </script>

                    <ul class="breadcrumb">
                        <li>
                            <i class="ace-icon fa fa-home home-icon"></i>
                            <a href="#">Home</a>
                        </li>
                        <li class="active">Dashboard</li>
                    </ul><!-- /.breadcrumb -->

                </div>

                <div class="page-content">
                    <div class="page-header">
                        <h1>
                            Thêm toà nhà
                            <small>
                                <i class="ace-icon fa fa-angle-double-right"></i>
                                overview &amp; stats
                            </small>
                        </h1>
                    </div><!-- /.page-header -->

                    <div class="row" style="font-family: 'Times New Roman', Times, serif">
                        <div class="col-xs-12">
                            <form class="form-horizontal" role="form" id="form-edit">
                                <div class="form-group">
                                    <label class="col-xs-3">Tên toà nhà</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="name" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3 ">Quận</label>
                                    <div class="col-xs-2">
                                        <select class="form-control" name="districtid" id="districtid ">
                                            <option value="">--Chọn Quận--</option>
                                            <option value="">Quận 1</option>
                                            <option value="">Quận 2</option>
                                            <option value="">Quận 3</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Phường</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="ward" name="ward" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Đường</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="street" name="street" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Kết cấu</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="structure" name="structure" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Số tầng hầm</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="numberofbasement" name="numberofbasement" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Diện tích sàn</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="floorarea" name="floorarea" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Hướng</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="direction" name="direction" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Hạng</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="level" name="level" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Diện tích thuê</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="rentarea" name="rentarea" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Giá thuê</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="rentprice" name="rentprice" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Mô tả giá</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="rentpricedescription" name="rentpricedescription" class="form-control">
                                    </div>
                                </div>
                                <!--  -->
                                <div class="form-group">
                                    <label class="col-xs-3">Phí dịch vụ</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Phí ô tô</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Phí mô tô</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Phí ngoài giờ</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Tiền điện</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Đặt cọc</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Thanh toán</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Thời hạn thuê</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Thời gian trang trí</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Tên quản lý</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">SĐT quản lý</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Phí môi giới</label>
                                    <div class="col-xs-9">
                                        <input type="number" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <!--  -->
                                <div class="form-group">
                                    <label class="col-xs-3">Loại toà nhà</label>
                                    <div class="col-xs-9">
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="renttype" value="noi-that">Nội thất
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="renttype" value="nguyen-can">Nguyên căn
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="renttype" value="tang-tret">Tầng trệt
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Ghi chú</label>
                                    <div class="col-xs-9">
                                        <input type="text" id="" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3"></label>
                                    <div class="col-xs-9">
                                        <button type="button" class="btn btn-primary" id="btnAddBuilding">Thêm toà nhà</button>
                                        <button type="button" class="btn btn-primary">Huỷ thao tác</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div><!-- /.page-content -->
            </div>
        </div><!-- /.main-content -->

        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
        </a>
    </div><!-- /.main-container -->
</body>
</html>
