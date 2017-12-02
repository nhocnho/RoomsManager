<jsp:include page="/WEB-INF/pages/admin/header.jsp">
    <jsp:param name="title" value="Phòng"/>
    <jsp:param name="name" value="Phòng"/>
    <jsp:param name="permission" value="admin"/>
</jsp:include>

<!-- Main content -->
<section class="content">
    <!-- Info boxes -->
    <div class="row">
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a href="room.jsp">
                <div class="info-box">
                    <span class="info-box-icon bg-black"><i class="ion-ios-home-outline"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Phòng</span>
                        <span class="info-box-number">A1-01</span>
                        <span class="info-box-text">Nguyễn Văn A</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        
        <div class="col-md-3 col-sm-6 col-xs-12">
            <a href="room.jsp">
                <div class="info-box">
                    <span class="info-box-icon bg-black"><i class="ion-ios-home-outline"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Phòng</span>
                        <span class="info-box-number">A1-02</span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

       
    </div>
    <!-- /.row -->

</section>

<jsp:include page="/WEB-INF/pages/admin/footer.jsp"/>
