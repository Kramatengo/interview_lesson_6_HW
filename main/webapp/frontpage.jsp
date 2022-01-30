<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Java web shop </title>
    <meta name="keywords" content="Java, Spring, Java EE"/>
    <meta name="description" content="Trial Java web shop "/>
    <link href="web_shop_forms.css" rel="stylesheet" type="text/css"/>
    <link href="web_shop_fonts.css" rel="stylesheet" type="text/css"/>
    <%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
</head>

<body>

<div id="javaShopPageContainer">

    <div id="javaShopPageMiddleContainer">

        <div id="javaShopPageHeader">
        </div>  <!-- javaShopPageHeader -->

        <div id="javaShopMenuBar">
            <span class="javaShopMenuText">Здесь будет меню</span>
        </div>  <!-- javaShopMenuBar  -->

        <div id="javaShopProductThumbsArea">

            <div id="javaShopProductThumbsAreaLabel">
                <span class="javaShopProductThumbsLabelText">Список продуктов</span>
            </div>   <!-- javaShopProductThumbsLabel -->

            <c:forEach var="product" items="${requestScope.products}">

                <div class="javaShopProductThumbFrameContainer">

                    <div class="javaShopProductThumbIdLabelContainer">
                        <span class="javaShopProductThumbsLabel"> Артикул</span>
                    </div>  <!-- javaShopProductThumbIdLabelContainer  -->

                    <div class="javaShopProductThumbIdContainer">
                        <span class="javaShopProductThumbsSubject"><c:out value="${product.id}"/></span>
                    </div>  <!-- javaShopProductThumbIdContainer  -->

                    <div class="javaShopProductThumbNameLabelContainer">
                        <span class="javaShopProductThumbsLabel">Название</span>
                    </div>  <!-- javaShopProductThumbNameLabelContainer -->

                    <div class="javaShopProductThumbNameContainer">
                        <span class="javaShopProductThumbsSubject"><c:out value="${product.name}"/></span>
                    </div>  <!-- javaShopProductThumbNameContainer -->

                    <div class="javaShopProductThumbPriceLabelContainer">
                        <span class="javaShopProductThumbsLabel">Цена</span>
                    </div>  <!-- javaShopProductThumbPriceLabelContainer -->


                    <div class="javaShopProductThumbPriceContainer">
                        <span class="javaShopProductThumbsSubject"><c:out value="${product.price} "/>&#8381;</span>
                    </div>  <!-- javaShopProductThumbPriceContainer -->

                </div>
                <!-- javaShopProductThumbFrameContainer -->

            </c:forEach>

        </div>  <!-- avaShopProductThumbsArea  -->

    </div>  <!-- javaShopPageMiddleContainer -->

</div>  <!-- javaShopPageContainer  -->

</body>

</html>
