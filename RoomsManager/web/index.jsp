<jsp:include page="/WEB-INF/pages/admin/header.jsp">
    <jsp:param name="title" value="Quan ly phong tro"/>
    <jsp:param name="name" value="Management"/>
    <jsp:param name="permission" value="admin"/>
</jsp:include>

<!-- Main content -->
<section class="content">
    <!-- Info boxes -->
    <div class="row">
        <a href="view/room.jsp">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-black"><i class="ion-ios-home-outline"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Phòng</span>
                        <span class="info-box-number">192</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
        </a>
        <!-- /.col -->

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion-flash"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Điện</span>
                    <span class="info-box-number">3500</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="ion-waterdrop"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Nước</span>
                    <span class="info-box-number">13000</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-gray"><i class="ion-wifi"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Internet</span>
                    <span class="info-box-number">50000</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-blue"><i class="ion-android-contact"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">Người thuê</span>
                    <span class="info-box-number">500</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->

</section>

<jsp:include page="/WEB-INF/pages/admin/footer.jsp"/>
