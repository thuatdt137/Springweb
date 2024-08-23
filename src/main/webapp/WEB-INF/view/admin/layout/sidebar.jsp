<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <nav id="sidebar" class="sidebar js-sidebar">
            <div class="sidebar-content js-simplebar">
                <a class="sidebar-brand" href="/admin">
                    <span class="sidebar-brand-text align-middle">
                        Laptop Shop
                    </span>
                </a>


                <ul class="sidebar-nav">
                    <li class="sidebar-header">
                        Feature
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link" href="/admin">
                            <i class="align-middle" data-feather="sliders"></i> <span
                                class="align-middle">Dashboard</span>
                        </a>
                    </li>

                    <li class="sidebar-item">
                        <a class="sidebar-link" href="/admin/user">
                            <i class="align-middle" data-feather="users"></i> <span class="align-middle">User</span>
                        </a>
                    </li>

                    <li class="sidebar-item">
                        <a class="sidebar-link" href="/admin/product">
                            <i class="align-middle" data-feather="box"></i> <span class="align-middle">Product</span>
                        </a>
                    </li>

                    <li class="sidebar-item">
                        <a class="sidebar-link" href="/admin/order">
                            <i class="align-middle" data-feather="shopping-cart"></i> <span
                                class="align-middle">Order</span>
                        </a>
                    </li>
            </div>
        </nav>