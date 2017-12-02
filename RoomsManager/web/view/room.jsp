<jsp:include page="/WEB-INF/pages/admin/header.jsp">
    <jsp:param name="title" value="Phòng"/>
    <jsp:param name="name" value="Phòng"/>
    <jsp:param name="permission" value="admin"/>
</jsp:include>
<!-- Main content -->
<style type="text/css">
    .control span{
/*        width: 40px;
        height: 30px;*/
        font-size: 30px;
        text-align: center;
        padding-left: 27px;
        
    }
    .control{
        background-color: #89cdef;
        margin-top: -5%;
        margin-left: 31%;
        height: 40px;
        visibility: hidden;
    }
    .control span{
        background-size: cover;
    }
    .col-md-3 col-sm-6 col-xs-12{
        margin-top: 25px;
    }
    #room:hover .control{
        visibility: visible;
    }
</style>
<section class="content">
    <!-- Info boxes -->
    <div class="row">
        <div class="col-md-1">
            <a href="room.jsp">
                <div class="info-box">
                    <span class="info-box-icon bg-green"><i class="ion-plus-round"></i></span>
                </div>
            </a>
            <!-- /.info-box -->
        </div>
        <!-- /.col --> 
        <div class="col-md-1">
            <a href="room.jsp">
                <div class="info-box">
                    <span class="info-box-icon bg-red"><i class="ion-android-delete"></i></span>
                </div>
            </a>
            <!-- /.info-box -->
        </div>
        <div class="col-md-1">
            <a href="room.jsp">
                <div class="info-box">
                    <span class="info-box-icon bg-orange"><i class="ion-edit"></i></span>
                </div>
            </a>
            <!-- /.info-box -->
        </div>
    </div>



    <div class="row">
        <div id="room" class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-black"><i class="ion-ios-home-outline"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Phòng</span> 


                        <span class="info-box-number">A1-01</span>
                        <span class="info-box-text">Nguyễn Văn A</span>
                    </div>

                    <!-- /.info-box-content -->
                </div>
            <div class="control">
                <a href = ><span class="i"><i class="ion-android-delete"></i></span></a>
                <a href=""><span class="i"><i class="ion-edit"></i></span></a>
                <a href=""> <span class="i"><i class="ion-eye"></i></span></a>
            </div>

            <!-- /.info-box -->
        </div>
        <!-- /.col -->

    </div>
    <!-- /.row -->

</section>

<jsp:include page="/WEB-INF/pages/admin/footer.jsp"/>
