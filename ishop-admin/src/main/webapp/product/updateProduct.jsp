<%--
  Created by IntelliJ IDEA.
  User: myq
  Date: 2017/4/23
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateProduct</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
    <!--提示框插件样式-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/sweetalert2.min.css">
    <style type="text/css">
        .container{
            width: 500px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>商品修改</h2>
    <form action="#" method="post" class="form-horizontal">
        <div class="form-group">
            <label for="productName" class="col-sm-3 control-label">商品名</label>
            <div class="col-sm-9">
                <input id="productName" type="text" name="productName" class="form-control"  placeholder="管理员名">
            </div>
        </div>
        <div class="form-group">
            <label for="productSubTitle" class="col-sm-3 control-label">商品子标题</label>
            <div class="col-sm-9">
                <input id="productSubTitle" type="text" name="productSubTitle" class="form-control"  placeholder="商品子标题">
            </div>
        </div>
        <div class="form-group">
            <label for="typeName" class="col-sm-3 control-label">类别名</label>
            <div class="col-sm-9">
                <input id="typeName" name="typeName" type="text"  class="form-control"  placeholder="类别名">
            </div>
        </div>
        <div class="form-group">
            <label for="imageSrc" class="col-sm-3 control-label">图片地址</label>
            <div class="col-sm-9">
                <input id="imageSrc" name="imageSrc" type="text"  class="form-control"  placeholder="图片地址">
            </div>
        </div>
        <div class="form-group">
            <label for="inventNum" class="col-sm-3 control-label">库存</label>
            <div class="col-sm-9">
                <input id="inventNum" name="inventNum" type="email" class="form-control"  placeholder="库存">
            </div>
        </div>
        <div class="form-group">
            <label for="monthSaleNum" class="col-sm-3 control-label">月销量</label>
            <div class="col-sm-9">
                <input id="monthSaleNum" name="monthSaleNum" type="tel" class="form-control"  placeholder="月销量">
            </div>
        </div>
        <div class="form-group">
            <label for="orderLink" class="col-sm-3 control-label">订购连接</label>
            <div class="col-sm-9">
                <input id="orderLink" name="orderLink" type="tel" class="form-control"  placeholder="订购连接">
            </div>
        </div>
        <div class="form-group">
            <label for="realPrice" class="col-sm-3 control-label">原价</label>
            <div class="col-sm-9">
                <input id="realPrice" name="realPrice" type="tel" class="form-control"  placeholder="原价">
            </div>
        </div>
        <div class="form-group">
            <label for="salePrice" class="col-sm-3 control-label">售价</label>
            <div class="col-sm-9">
                <input id="salePrice" name="salePrice" type="tel" class="form-control"  placeholder="售价">
            </div>
        </div>
        <div class="form-group">
            <label for="isRecommend" class="col-sm-3 control-label">是否推荐</label>
            <div class="col-sm-9">
                <select name="isRecommend" id="isRecommend" class="form-control">
                    <option value="1">推荐</option>
                    <option value="0">不推荐</option>
                </select>
            </div>
        </div>
        <div class="form-group" >
            <label for="id" class="col-sm-3 control-label">id</label>
            <div class="col-sm-9">
                <input id="id" class="form-control" type="text">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-9">
                <button type="button" onclick="updateProdcut()" class="btn btn-default">修改</button>
            </div>
        </div>
    </form>
</div>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vue.js"></script>
<!--引入弹出框插件的js-->
<script src="<%=request.getContextPath()%>/js/sweetalert2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/product.js"></script>
<script>
    $(document).ready(function(){
        var id = location.search.split("=")[1];
        var name = $("#productName");
        var subTitle = $("#productSubTitle");
        var typeId = $("#typeName");
        var imageSrc = $("#imageSrc");
        var inventNum =  $("#inventNum");
        var saleNum = $("#monthSaleNum");
        var orderLink = $("#orderLink");
        var salePrice = $("#salePrice");
        var realPrice = $("#realPrice");
        var isRecommend = $("#isRecommend");
        var productId =$("#id");
        $.ajax({
                type:"GET",
                url:"/ishop-admin/getProductById",
                data:{id:id},
                dataType:"json",
                success:function (data) {
                    //这里获取到数据展示到前台
                    name.val(data.name);
                    subTitle.val(data.subTitle);
                    typeId.val(data.typeId);
                    imageSrc.val(data.imageSrc);
                    inventNum.val(data.inventNumber);
                    saleNum.val(data.monthSellNumber);
                    orderLink.val(data.orderLink);
                    salePrice.val(data.sellPrice);
                    realPrice.val(data.realPrice);
                    isRecommend.val(data.isRecommend);
                    productId.val(data.id);
                }

            }
        );
    })
</script>
</body>
</html>
