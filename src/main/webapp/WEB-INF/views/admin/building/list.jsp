<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
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
                                    <div class="widget-main" id="listForm">
                                        <div class="row">
<%--                                            <div class="form-group">--%>
                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <label class="name">Tên toà nhà</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col-xs-6">
                                                        <label class="name">Diện tích sàn</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-2">
                                                        <label class="name">Quận</label>
                                                        <select class="form-control">
                                                            <option value="">--Chọn Quận--</option>
                                                            <option value="">Quận 1</option>
                                                            <option value="">Quận 2</option>
                                                            <option value="">Quận 3</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Phường</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Đường</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-4">
                                                        <label class="name">Số tầng hầm</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Hướng</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Hạng</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-3">
                                                        <label class="name">Diện tích từ</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Diện tích đến</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Giá thuê từ</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Giá thuê đến</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-5">
                                                        <label class="name">Tên quản lý</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Điện thoại quản lý</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <label class="name">Chọn nhân viên phụ trách</label>
                                                        <select class="form-control">
                                                            <option value="">--Chọn nhân viên--</option>
                                                            <option value="">Nhân viên 1</option>
                                                            <option value="">Nhân viên 2</option>
                                                            <option value="">Nhân viên 3</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <label class="checkbox-inline">
                                                            <input type="checkbox">Nội thất
                                                        </label>
                                                        <label class="checkbox-inline">
                                                            <input type="checkbox">Nguyên căn
                                                        </label>
                                                        <label class="checkbox-inline">
                                                            <input type="checkbox">Tầng trệt
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
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace">
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td>
                                        ACM Building
                                    </td>
                                    <td>59 Phan Xích Long, Phường 2, Quận 1</td>
                                    <td>3</td>
                                    <td>Anh Nam, Chị Linh</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Expiring</td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success" title="Giao toà nhà" onclick="assingmentBuilding(1)">
                                                <i class="ace-icon glyphicon glyphicon-list"></i>
                                            </button>

                                            <a class="btn btn-xs btn-info" title="Sửa toà nhà" href="/admin/building-edit">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
                                            </a>

                                            <button class="btn btn-xs btn-danger" title="Xoá toà nhà">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>
                                        </div>

                                    </td>
                                </tr>

                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace">
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td>
                                        Nam Giao Building
                                    </td>
                                    <td>59 Phan Xích Long, Phường 2, Quận 1</td>
                                    <td>3</td>
                                    <td>Anh Nam, Chị Linh</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Feb 12</td>
                                    <td>Expiring</td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success" title="Giao toà nhà">
                                                <i class="ace-icon glyphicon glyphicon-list"></i>
                                            </button>

                                            <button class="btn btn-xs btn-info" title="Sửa toà nhà">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-danger" title="Xoá toà nhà">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
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
    </script>
</body>
</html>
