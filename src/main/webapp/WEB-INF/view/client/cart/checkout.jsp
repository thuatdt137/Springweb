<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <title>Online Shopping System</title>

                    <!-- Google font -->
                    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

                    <!-- Bootstrap -->
                    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />

                    <!-- Slick -->
                    <link type="text/css" rel="stylesheet" href="/css/slick.css" />
                    <link type="text/css" rel="stylesheet" href="/css/slick-theme.css" />

                    <!-- nouislider -->
                    <link type="text/css" rel="stylesheet" href="/css/nouislider.min.css" />

                    <!-- Font Awesome Icon -->
                    <link rel="stylesheet" href="/css/font-awesome.min.css">

                    <!-- Custom stlylesheet -->
                    <link type="text/css" rel="stylesheet" href="/css/style.css" />
                </head>

                <body>
                    <jsp:include page="../layout/header1.jsp" />
                    <jsp:include page="../layout/navigation.jsp" />
                    <!-- BREADCRUMB -->
                    <div id="breadcrumb" class="section">
                        <!-- container -->
                        <div class="container">
                            <!-- row -->
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="breadcrumb-header">Checkout</h3>
                                    <ul class="breadcrumb-tree">
                                        <li><a href="/">Home</a></li>
                                        <li><a href="/cart">Cart</a></li>
                                        <li class="active">Checkout</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- /row -->
                        </div>
                        <!-- /container -->
                    </div>
                    <!-- /BREADCRUMB -->

                    <!-- SECTION -->
                    <div class="section">
                        <!-- container -->
                        <div class="container">
                            <!--form-->
                            <c:if test="${not empty cartDetails}">
                                <form:form action="/place-order" method="post" modelAttribute="cart">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <!-- row -->
                                    <div class="row">
                                        <div class="col-md-7">
                                            <!-- Shipping Details -->
                                            <div class="billing-details">
                                                <div class="section-title">
                                                    <h3 class="title">Shipping address</h3>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Name*</label>
                                                            <input class="input" name="receiverName" placeholder="Name"
                                                                required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Mobile*</label>
                                                            <input class="input" name="receiverPhone"
                                                                placeholder="Mobile" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>District</label>
                                                            <select class="form-select"
                                                                style="height: 40px; padding: 0px 15px; border: 1px solid #E4E7ED; background-color: #FFF; width: 100%;"
                                                                id="districtSelect" name="district">
                                                                <option value="0">Select District</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Email*</label>
                                                            <input class="input" type="email" name="email"
                                                                placeholder="Email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Province</label>
                                                            <select class="form-select"
                                                                style="height: 40px; padding: 0px 15px; border: 1px solid #E4E7ED; background-color: #FFF; width: 100%;"
                                                                id="provinceSelect" name="province">
                                                                <option value="0">Select Province</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Wards</label>
                                                            <select class="form-select"
                                                                style="height: 40px; padding: 0px 15px; border: 1px solid #E4E7ED; background-color: #FFF; width: 100%;"
                                                                id="wardSelect" name="wards">
                                                                <option value="0">Select Wards</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /Shipping Details -->
                                            <!-- Order notes -->
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input class="input" type="text" name="address" id="address"
                                                    placeholder="Address">
                                                <input class="input" type="text" name="address2" id="address2"
                                                    style="display: none;">
                                            </div>
                                            <div class="order-notes">
                                                <label>Delivery Notes</label>
                                                <textarea class="input" placeholder="Order Notes"></textarea>
                                            </div><br />
                                            <div class="mt-4">
                                                <i class="fa fa-arrow-left"></i>
                                                <a href="/cart" id="back-to-cart">Back to Cart</a>
                                            </div>
                                            <!-- /Order notes -->
                                        </div>

                                        <!-- Order Details -->
                                        <div class="col-md-5 order-details">
                                            <div class="section-title text-center">
                                                <h3 class="title">Your Order</h3>
                                            </div>
                                            <div class="order-summary">
                                                <div class="order-col">
                                                    <div><strong>PRODUCT</strong></div>
                                                    <div><strong>TOTAL</strong></div>
                                                </div>
                                                <c:forEach items="${cartDetails}" var="cartDetail">
                                                    <div class="order-products">
                                                        <div class="order-col">
                                                            <div>${cartDetail.quantity}x ${cartDetail.product.name}
                                                            </div>
                                                            <div>
                                                                <fmt:formatNumber type="number"
                                                                    value="${cartDetail.price * cartDetail.quantity}" />
                                                                $
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>

                                                <div class="order-col">
                                                    <div>Shipping</div>
                                                    <div><strong class="shippingFee">0 VND</strong></div>
                                                </div>
                                                <input class="shippingFee" style="display: none;" name="shippingFee" />
                                                <div class="order-col">
                                                    <div><strong>TOTAL</strong></div>
                                                    <div><strong class="order-total">
                                                            <fmt:formatNumber type="number" value="${totalPrice}" /> $
                                                        </strong></div>
                                                </div>
                                            </div>
                                            <div class="payment-method">
                                                <div class="input-radio">
                                                    <input type="radio" name="payment" id="payment-1" checked>
                                                    <label for="payment-1">
                                                        <span></span>
                                                        Cash on Delivery(COD)
                                                    </label>
                                                    <div class="caption">
                                                        <p>Service provides Cash on Delivery collection for shipments
                                                            that
                                                            ensures packages are delivered to the recipient and payments
                                                            are
                                                            secured for the seller.</p>
                                                    </div>
                                                </div>
                                                <div class="input-radio">
                                                    <input type="radio" name="payment" id="payment-2" disabled>
                                                    <label for="payment-2">
                                                        <span></span>
                                                        Bank Transfer
                                                    </label>
                                                    <div class="caption">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
                                                            do
                                                            eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="input-radio">
                                                    <input type="radio" name="payment" id="payment-3" disabled>
                                                    <label for="payment-3">
                                                        <span></span>
                                                        Internet Banking
                                                    </label>
                                                    <div class="caption">
                                                        <p>Netbanking, also known as internet banking, is a digital
                                                            method to
                                                            conduct banking transactions by the means of the internet.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" class="primary-btn order-submit"
                                                style="width: 100%;">Submit</button>
                                        </div>
                                        <!-- /Order Details -->
                                    </div>
                                    <!-- /row -->
                                </form:form>
                            </c:if>
                            <!--/form-->

                        </div>
                        <!-- /container -->
                    </div>
                    <!-- /SECTION -->
                    <jsp:include page="../layout/footer1.jsp" />


                    <!-- jQuery Plugins -->
                    <script src="/js/jquery.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/slick.min.js"></script>
                    <script src="/js/nouislider.min.js"></script>
                    <script src="/js/jquery.zoom.min.js"></script>
                    <script src="/js/main.js"></script>
                    <script src="https://esgoo.net/scripts/jquery.js"></script>
                    <style type="text/css">
                        .css_select_div {
                            text-align: center;
                        }

                        .css_select {
                            display: inline-table;
                            width: 25%;
                            padding: 5px;
                            margin: 5px 2%;
                            border: solid 1px #686868;
                            border-radius: 5px;
                        }
                    </style>
                    <script>
                        $(document).ready(function () {
                            const baseUrl = "https://online-gateway.ghn.vn/shiip/public-api/master-data";
                            const token = "91f5662f-60be-11ef-bf33-0a0292900be7";
                            const shopId = 3180299;
                            var address = "";
                            let selectedDistrictId, selectedWardCode;

                            // 1. Load danh sách Tỉnh/Thành
                            $.ajax({
                                url: `https://online-gateway.ghn.vn/shiip/public-api/master-data/province`,
                                method: 'GET',
                                headers: {
                                    'Content-Type': 'application/json',
                                    'Token': token
                                },
                                success: function (response) {
                                    if (response.code === 200) {
                                        const provinces = response.data;
                                        const provinceSelect = $('#provinceSelect');
                                        $.each(provinces, function (index, province) {
                                            provinceSelect.append($('<option>', {
                                                value: province.ProvinceID,
                                                text: province.ProvinceName
                                            }));
                                        });
                                    } else {
                                        console.error('Failed to fetch provinces:', response.message);
                                    }
                                },
                                error: function (xhr, status, error) {
                                    console.error('Error:', status, error);
                                }
                            });

                            // 2. Khi chọn Tỉnh/Thành, load danh sách Quận/Huyện
                            $('#provinceSelect').change(function () {
                                const provinceId = $(this).val();
                                $('#districtSelect').prop('disabled', true).html('<option value="">Select District</option>');
                                $('#wardSelect').prop('disabled', true).html('<option value="">Select Wards</option>');

                                if (provinceId) {
                                    $.ajax({
                                        url: `https://online-gateway.ghn.vn/shiip/public-api/master-data/district`,
                                        method: 'GET',
                                        headers: {
                                            'Content-Type': 'application/json',
                                            'Token': token
                                        },
                                        data: {
                                            "province_id": provinceId
                                        },
                                        success: function (response) {
                                            if (response.code === 200) {
                                                const districts = response.data;
                                                const districtSelect = $('#districtSelect');
                                                $.each(districts, function (index, district) {
                                                    districtSelect.append($('<option>', {
                                                        value: district.DistrictID,
                                                        text: district.DistrictName
                                                    }));
                                                });
                                                districtSelect.prop('disabled', false);
                                            } else {
                                                console.error('Failed to fetch districts:', response.message);
                                            }
                                        },
                                        error: function (xhr, status, error) {
                                            console.error('Error:', status, error);
                                        }
                                    });
                                }
                            });

                            // 3. Khi chọn Quận/Huyện, load danh sách Phường/Xã
                            $('#districtSelect').change(function () {
                                const districtId = $(this).val();
                                selectedDistrictId = districtId;
                                $('#wardSelect').prop('disabled', true).html('<option value="">Select Wards</option>');

                                if (districtId) {
                                    $.ajax({
                                        url: `https://online-gateway.ghn.vn/shiip/public-api/master-data/ward`,
                                        method: 'GET',
                                        headers: {
                                            'Content-Type': 'application/json',
                                            'Token': token
                                        },
                                        data: {
                                            "district_id": districtId
                                        },
                                        success: function (response) {
                                            if (response.code === 200) {
                                                const wards = response.data;
                                                const wardSelect = $('#wardSelect');
                                                $.each(wards, function (index, ward) {
                                                    wardSelect.append($('<option>', {
                                                        value: ward.WardCode,
                                                        text: ward.WardName
                                                    }));
                                                });
                                                wardSelect.prop('disabled', false);
                                            } else {
                                                console.error('Failed to fetch wards:', response.message);
                                            }
                                        },
                                        error: function (xhr, status, error) {
                                            console.error('Error:', status, error);
                                        }
                                    });
                                }
                            });

                            $('#wardSelect').change(function () {
                                selectedWardCode = $(this).val();
                                console.log("wards: " + selectedWardCode + typeof (selectedWardCode));
                                console.log("district: " + selectedDistrictId + typeof (selectedDistrictId));


                                if (selectedWardCode) {
                                    calculateShippingFee();
                                }
                            });

                            function calculateShippingFee() {
                                $.ajax({
                                    url: `https://online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee`,
                                    method: 'POST',
                                    headers: {
                                        'Content-Type': 'application/json',
                                        'Token': token,
                                        'ShopId': shopId
                                    },
                                    data: JSON.stringify({
                                        "service_type_id": 2,  // Tùy thuộc vào loại dịch vụ mà bạn chọn
                                        "from_district_id": 2025,  // Thay bằng ID của quận/huyện từ nơi gửi
                                        "to_district_id": Number(selectedDistrictId),  // Quận/huyện đích
                                        "to_ward_code": selectedWardCode,  // Phường/xã đích
                                        "height": 20,
                                        "length": 30,
                                        "weight": 3000,
                                        "width": 40,
                                        "insurance_value": 0,
                                        "coupon": null,
                                        "items": [
                                            {
                                                "name": "TEST1",
                                                "quantity": 1,
                                                "height": 200,
                                                "weight": 1000,
                                                "length": 200,
                                                "width": 200
                                            }
                                        ]
                                    }),
                                    success: function (response) {
                                        if (response.code === 200) {
                                            const fee = response.data.total;
                                            console.log(typeof (fee));
                                            // Chọn tất cả các phần tử có class "shippingFee"
                                            const elements = document.querySelectorAll(".shippingFee");

                                            document.getElementById("address2").value = $('#wardSelect option:selected').text() + ", " +
                                                $('#districtSelect option:selected').text() + ", " +
                                                $('#provinceSelect option:selected').text();

                                            // Lặp qua từng phần tử và thay đổi giá trị
                                            elements.forEach((element) => {
                                                if (element.tagName === "STRONG") {
                                                    element.textContent = fee + "VND"; // Thay đổi nội dung text của thẻ <strong>
                                                } else if (element.tagName === "INPUT") {
                                                    element.value = fee; // Thay đổi giá trị của thẻ <input>
                                                }
                                            });
                                        } else {
                                            console.error('Failed to calculate shipping fee:', response.message);
                                        }
                                    },
                                    error: function (xhr, status, error) {
                                        console.error('Error:', status, error);
                                    }
                                });
                            }
                        });








                    </script>
                </body>

                </html>