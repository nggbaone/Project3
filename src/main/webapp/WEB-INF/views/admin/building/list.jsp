<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingListURL" value="/admin/building-list"></c:url>
<html>
<head>
    <title>Danh sách toà nhà</title>
</head>
<body>

    <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs" id="breadcrumbs">
                    <script type="text/javascript">
                        try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                    </script>

                    <ul class="breadcrumb">
                        <li>
                            <i class="ace-icon fa fa-home home-icon"></i>
                            <a href="#">Trang chủ</a>
                        </li>
                        <li class="active">Quản lý toà nhà</li>
                    </ul><!-- /.breadcrumb -->
                </div>

                <div class="page-content">
                    <div class="page-header">
                        <h1>
                            Danh sách toà nhà
                            <small>
                                <i class="ace-icon fa fa-angle-double-right"></i>
                                overview &amp; stats
                            </small>
                        </h1>
                    </div><!-- /.page-header -->
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="widget-box ui-sortable-handle">
                                <div class="widget-header">
                                    <h5 class="widget-title">Tìm kiếm</h5>
                                    <div class="widget-toolbar">
                                        <a href="#" data-action="collapse">
                                            <i class="ace-icon fa fa-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="widget-body" style="font-family: 'Times New Roman', Times, serif">
                                    <div class="widget-main">
                                        <form:form id="listForm" modelAttribute="modelSearch" action="${buildingListURL}" method="GET">
                                            <div class="row">
                                                    <%--                                            <div class="form-group">--%>
                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <label class="name">Tên toà nhà</label>
                                                        <input type="text" class="form-control" id="name" name="name" value="${modelSearch.name}">
                                                    </div>
                                                    <div class="col-xs-6">
                                                        <label class="name">Diện tích sàn</label>
                                                        <input type="number" class="form-control" id="floorArea" name="floorArea" value="${modelSearch.floorArea}">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-2">
                                                        <label class="name">Quận</label>
                                                        <form:select class="form-control" path="district">
                                                            <form:option value="">--Chọn Quận--</form:option>
                                                            <form:option value="Quan_1">Quận 1</form:option>
                                                            <form:option value="Quan_2">Quận 2</form:option>
                                                            <form:option value="Quan_3">Quận 3</form:option>
                                                        </form:select>
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Phường</label>
<%--                                                        <input type="text" class="form-control" name="ward" value="">--%>
                                                        <form:input type="text" class="form-control" path="ward"></form:input>
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Đường</label>
                                                        <input type="text" class="form-control" name="street" value="">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-4">
                                                        <label class="name">Số tầng hầm</label>
                                                        <input type="number" class="form-control" name="numberOfBasement" value="">
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Hướng</label>
                                                        <input type="text" class="form-control" name="direction" value="">
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Hạng</label>
                                                        <input type="number" class="form-control" name="level" value="">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-3">
                                                        <label class="name">Diện tích từ</label>
                                                        <input type="number" class="form-control" name="areaFrom" value="">
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Diện tích đến</label>
                                                        <input type="number" class="form-control" name="areaTo" value="">
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Giá thuê từ</label>
                                                        <input type="number" class="form-control" name="rentPriceFrom" value="">
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Giá thuê đến</label>
                                                        <input type="number" class="form-control" name="rentPriceTo" value="">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-5">
                                                        <label class="name">Tên quản lý</label>
                                                        <input type="text" class="form-control" name="managerName" value="">
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Điện thoại quản lý</label>
                                                        <input type="text" class="form-control" name="managerPhone" value="">
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <label class="name">Chọn nhân viên phụ trách</label>
                                                        <select class="form-control">
                                                            <option value="">--Chọn nhân viên--</option>
                                                            <option value="1">Nhân viên 1</option>
                                                            <option value="2">Nhân viên 2</option>
                                                            <option value="3">Nhân viên 3</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <label class="checkbox-inline">
                                                            <input name="typeCode" type="checkbox" value="noi-that">Nội thất
                                                        </label>
                                                        <label class="checkbox-inline">
                                                            <input name="typeCode" type="checkbox" value="nguyen-can">Nguyên căn
                                                        </label>
                                                        <label class="checkbox-inline">
                                                            <input name="typeCode" type="checkbox" value="tang-tret">Tầng trệt
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <button type="button" class="btn btn-danger" id="btnSearchBuilding">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"></path>
                                                            </svg>
                                                            Tìm kiếm
                                                        </button>
                                                    </div>
                                                </div>
                                                    <%--                                            </div>--%>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>

                                <div class="pull-right">
                                    <a href="/admin/building-edit">
                                        <button class="btn btn-info" title="Thêm toà nhà">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
                                                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                                                <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                                <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                            </svg>
                                        </button>
                                    </a>

                                    <button class="btn btn-danger" title="Xoá toà nhà">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-dash" viewBox="0 0 16 16">
                                            <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"/>
                                            <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                            <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                        </svg>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Bảng danh sách -->

                    <div class="row">
                        <div class="col-xs-12">
                            <table style="margin: 3em 0 1.5em;" id="simple-table" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th class="center">
                                            <label class="pos-rel">
                                                <input type="checkbox" class="ace">
                                                <span class="lbl"></span>
                                            </label>
                                        </th>
                                        <th>Tên toà nhà</th>
                                        <th>Địa chỉ</th>
                                        <th>Số tầng hầm</th>
                                        <th>Tên quản lý</th>
                                        <th>SĐT quản lý</th>
                                        <th>D.T sàn</th>
                                        <th>D.T trống</th>
                                        <th>D.T thuê </th>
                                        <th>Phí mô giới</th>
                                        <th>Giá thuê</th>
                                        <th>Phí dịch vụ</th>
                                        <th>Thao tác</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach var="item" items="${buildingList}">
                                        <tr>
                                            <td class="center">
                                                <label class="pos-rel">
                                                    <input type="checkbox" class="ace">
                                                    <span class="lbl"></span>
                                                </label>
                                            </td>

                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>
                                            <td>${item.name}</td>

                                            <td>
                                                <div class="hidden-sm hidden-xs btn-group">
                                                    <button class="btn btn-xs btn-success" title="Giao toà nhà" onclick="assingmentBuilding(1)">
                                                        <i class="ace-icon glyphicon glyphicon-list"></i>
                                                    </button>

                                                    <a class="btn btn-xs btn-info" title="Sửa toà nhà" href="/admin/building-edit-${item.id}">
                                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                    </a>

                                                    <button class="btn btn-xs btn-danger" title="Xoá toà nhà">
                                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                    </button>
                                                </div>

                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div><!-- /.span -->
                    </div>

                </div><!-- /.page-content -->
            </div>
        </div><!-- /.main-content -->

    <!-- Modal -->
    <div class="modal fade" id="assingmentBuildingModal" role="dialog" style="font-family: 'Times New Roman', Times, serif;">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Danh sách nhân viên</h4>
                </div>
                <div class="modal-body">
                    <table id="staffList" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">Chọn</th>
                            <th class="center">Tên nhân viên</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td class="center">
                                <input type="checkbox" class="" value="1" id="checkbox_1">
                            </td>
                            <td class="center">Nguyễn Văn A</td>
                        </tr>

                        <tr>
                            <td class="center">
                                <input type="checkbox" class="" value="2" id="checkbox_2">
                            </td>
                            <td class="center">Đoàn Gia B</td>
                        </tr>
                        </tbody>
                    </table>
                    <input type="hidden" id="buildingId" name="Building" value="1">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" id="btnassingmentBuilding">Giao toà nhà</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Huỷ</button>
                </div>
            </div>

        </div>
    </div>

    <script>
        function assingmentBuilding(buildingId) {
            $('#assingmentBuildingModal').modal();
        }

        $('#btnassingmentBuilding').click(function(e){
            e.preventDefault();
            var data = {};
            data['buildingId'] = $('#buildingId').val();
            var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function(){
                return $(this).val();
            }).get();
            data['staffs'] = staffs;
            console.log("ok");
        });

        $('#btnSearchBuilding').click(function(e) {
            e.preventDefault();
            $('#listForm').submit();
        });
    </script>
</body>
</html>
