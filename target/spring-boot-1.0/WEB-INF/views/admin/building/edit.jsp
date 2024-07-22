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
                        <form:form modelAttribute="buildingEdit">
                            <div class="col-xs-12">
                                <form class="form-horizontal" role="form" id="form-edit">
                                    <div class="form-group">
                                        <label class="col-xs-3">Tên toà nhà</label>
                                        <div class="col-xs-9">
                                            <form:input id="name" class="form-control" path="name"></form:input>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3 ">Quận</label>
                                        <div class="col-xs-2">
                                            <form:select class="form-control" id="districtid" path="district">
                                                <form:option value="">--Chọn Quận--</form:option>
                                                <form:option value="1">Quận 1</form:option>
                                                <form:option value="2">Quận 2</form:option>
                                                <form:option value="3">Quận 3</form:option>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Phường</label>
                                        <div class="col-xs-9">
                                            <form:input id="ward" class="form-control" path="ward"></form:input>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Đường</label>
                                        <div class="col-xs-9">
                                            <form:input id="street" class="form-control" path="street"></form:input>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Kết cấu</label>
                                        <div class="col-xs-9">
                                            <input id="structure" class="form-control" name="structure" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Số tầng hầm</label>
                                        <div class="col-xs-9">
                                            <form:input id="numberofbasement" class="form-control" path="numberOfBasement"></form:input>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Diện tích sàn</label>
                                        <div class="col-xs-9">
                                            <form:input id="floorarea" class="form-control" path="floorArea"></form:input>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Hướng</label>
                                        <div class="col-xs-9">
                                            <form:input id="direction" class="form-control" path="direction"></form:input>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Hạng</label>
                                        <div class="col-xs-9">
                                            <form:input id="level" class="form-control" path="level"></form:input>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Diện tích thuê</label>
                                        <div class="col-xs-9">
                                            <input type="text" name="rentarea"  id="rentarea" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Giá thuê</label>
                                        <div class="col-xs-9">
                                            <input type="number" name="rentprice" id="rentprice" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Mô tả giá</label>
                                        <div class="col-xs-9">
                                            <input type="text" name="rentpricedescription" id="rentpricedescription" class="form-control">
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="form-group">
                                        <label class="col-xs-3">Phí dịch vụ</label>
                                        <div class="col-xs-9">
                                            <input type="number" id="servicefee" name="servicefee" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Phí ô tô</label>
                                        <div class="col-xs-9">
                                            <input type="number" name="carfee" id="carfee" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Phí mô tô</label>
                                        <div class="col-xs-9">
                                            <input type="number" name="motofee" id="motofee" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Phí ngoài giờ</label>
                                        <div class="col-xs-9">
                                            <input type="number" name="overtimefee" id="overtimefee" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Tiền điện</label>
                                        <div class="col-xs-9">
                                            <input type="number"name="electricityfee" id="electricityfee"  class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Đặt cọc</label>
                                        <div class="col-xs-9">
                                            <input type="number" name="deposit" id="deposit" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Thanh toán</label>
                                        <div class="col-xs-9">
                                            <input type="number" name="payment" id="payment" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Thời hạn thuê</label>
                                        <div class="col-xs-9">
                                            <input type="text" name="renttime" id="renttime" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Thời gian trang trí</label>
                                        <div class="col-xs-9">
                                            <input type="text" name="decorationtime" id="decorationtime" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Tên quản lý</label>
                                        <div class="col-xs-9">
                                            <input type="text" name="managername" id="managername" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">SĐT quản lý</label>
                                        <div class="col-xs-9">
                                            <input type="text" name="managerphone" id="managerphone" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3">Phí môi giới</label>
                                        <div class="col-xs-9">
                                            <input type="number" name="brokeragefee" id="brokeragefee" class="form-control">
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
                                            <input type="text" name="note"  id="note"  class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-3"></label>
                                        <div class="col-xs-9">
                                            <c:if test="${not empty buildingEdit.id}">
                                                <button type="button" class="btn btn-primary" id="btnAddBuilding">Cập nhật toà nhà</button>
                                                <button type="button" class="btn btn-primary">Huỷ thao tác</button>
                                            </c:if>
                                            <c:if test="${empty buildingEdit.id}">
                                                <button type="button" class="btn btn-primary" id="btnAddBuilding">Thêm toà nhà</button>
                                                <button type="button" class="btn btn-primary">Huỷ thao tác</button>
                                            </c:if>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </form:form>

                    </div>

                </div><!-- /.page-content -->
            </div>
        </div><!-- /.main-content -->

        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
        </a>
    </div><!-- /.main-container -->

    <script>
        // dung js - jquery lay data
        $('#btnAddBuilding').click(function(){
            var data = {};
            var typeCode = [];
            var formData = $('#form-edit').serializeArray();
            $.each(formData, function(i, v){
                if(v.name != 'renttype'){
                    data["" +v.name +""] = v.value;
                } else {
                    typeCode.push(v.value);
                }
            });
            data['typeCode'] = typeCode;
            console.log("ok");
            // call api bang jquery ajax
            $.ajax({
                type: "POST",
                url:"http://127.0.0.1:5500/building", // call API
                data: JSON.stringify(data), // định dạng dữ liệu từ client gửi xuống
                contentType: "application/json", // định dạng dữ liệu từ client gửi xuống
                //dataType: "JSON", // định dạng dữ liệu từ server gửi lên
                success: function(respond) {
                    console.log("Success");
                },
                error: function(respond) {
                    console.log("Fail");
                }
            });
        });
    </script>

</body>
</html>
