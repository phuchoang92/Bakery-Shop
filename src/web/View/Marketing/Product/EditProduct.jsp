<%-- 
    Document   : EditSlider
    Created on : Jun 14, 2022, 9:45:19 AM
    Author     : hellb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
    <head>

        <title>Marketing - Edit Product</title>
        <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 11]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
            <![endif]-->
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Flash Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
        <meta name="keywords"
              content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, Flash Able, Flash Able bootstrap admin template">
        <meta name="author" content="Codedthemes" />
    </head>

    <body class="">
        <%@include file="../../public/adNavbar.jsp" %>
        <section class="pcoded-main-container">
            <div class="pcoded-wrapper">
                <div class="pcoded-content">
                    <div class="pcoded-inner-content">
                        <div class="main-body">
                            <div class="page-wrapper">
                                <!-- [ breadcrumb ] start -->
                                <div class="page-header">
                                    <div class="page-block">
                                        <div class="row align-items-center">
                                            <div class="col-md-12">
                                                <div class="page-header-title">
                                                    <h5 class="m-b-10">Edit Product</h5>
                                                </div>
                                                <ul class="breadcrumb">
                                                    <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                                                    <li class="breadcrumb-item"><a href="#!">Marketing</a></li>
                                                    <li class="breadcrumb-item"><a href="#!">Edit Product</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ breadcrumb ] end -->
                                <!-- [ Main Content ] start -->
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="card">

                                            <div class="card-body table-border-style">
                                                <div class="table-responsive">
                                                    <form action="/src/marketing/editproduct" name="formInsert" method="post" enctype="multipart/form-data">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Edit Product</h4>
                                                            <a href="/src/marketing/productlist"> 
                                                                <input type="button" class="btn btn-secondary" value="Back to List">
                                                            </a>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <label>Product ID</label>
                                                                <input value="${product.productID}" name="productID" type="text" class="form-control" readonly="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Product Name</label>
                                                                <input value="${product.productName}" name="productName" type="text"
                                                                       class="form-control" required="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Title</label>
                                                                <input value="${product.title}" name="title" type="text"
                                                                       class="form-control" required>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-4">
                                                                    <label>Weight</label>
                                                                    <input value="${product.weight}" name="weight" type="number"
                                                                           class="form-control" required>
                                                                </div>

                                                                <div class="form-group col-md-4">
                                                                    <label>Degree</label>
                                                                    <input value="${product.degree}" name="degree" type="number"
                                                                           class="form-control" required>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label>Time</label>
                                                                    <input value="${product.time}" name="time" type="number"
                                                                           class="form-control" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Price</label>
                                                                <input value="${product.price}" name="price" type="text"
                                                                       pattern="[0-9]*\.?[0-9]*" placeholder="x.x" class="form-control" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Quantity</label>
                                                                <input value="${product.quantity}" name="quantity" type="number"
                                                                       class="form-control" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Discount</label>
                                                                <input value="${product.discount}" name="discount" type="text"
                                                                       pattern="0*(0\.)+[0-9]*" placeholder="0.x" class="form-control" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Create Date</label>
                                                                <input value="${product.createdate}" name="createdate" type="date"
                                                                       class="form-control" required>
                                                            </div>

                                                            <div class="form-group">
                                                                <label>Description</label>
                                                                <textarea name="description" id="Description" class="form-control" required>${product.description}</textarea>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="ps-form--review form-group">
                                                                    <!-- Upload image input-->
                                                                    <div class="input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm">
                                                                        <label>Thumbnail</label>
                                                                        <input id="upload" type="file" onchange="readURL(this);" class="form-control border-0" name="thumbnail">
                                                                    </div>
                                                                    <!-- Uploaded image area-->
                                                                    <div class="image-area mt-4"><img id="imageResult" src="${product.thumbnail}" name="raw_thumbnail" class="img-fluid rounded shadow-sm mx-auto d-block"></div>
                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-6">
                                                                    <label>Category</label>
                                                                    <select name="categoryID" class="form-control" aria-label="Default select example">
                                                                        <c:forEach items="${lsCategory}" var="o">
                                                                            <option value="${o.categoryID}" ${product.categoryID.categoryID==o.categoryID?"selected":""}>${o.categoryName}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>

                                                                <div class="form-group col-md-6">
                                                                    <label>Status</label>
                                                                    <select name="status" class="form-control" aria-label="Default select example">
                                                                        <option value="1" ${product.status?"selected":""}>On Shopping</option>
                                                                        <option value="0" ${product.status?"":"selected"}>Out of Stock</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="modal-footer">
                                                            <input type="submit" name="edit"class="btn btn-success" value="Edit">
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <script src="https://cdn.ckeditor.com/4.19.0/standard-all/ckeditor.js"></script>

        <script src="/src/assests/js/form.js"></script>

    </body>

</html>
