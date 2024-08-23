<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
            <meta name="author" content="AdminKit">
            <meta name="keywords"
                content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

            <link rel="preconnect" href="https://fonts.gstatic.com">
            <link rel="shortcut icon" href="img/icons/icon-48x48.png" />

            <link rel="canonical" href="index.html" />

            <title>AdminKit Demo - Bootstrap 5 Admin Template</title>

            <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap"
                rel="stylesheet">

            <!-- Choose your prefered color scheme -->
            <!-- <link href="css/light.css" rel="stylesheet"> -->
            <!-- <link href="css/dark.css" rel="stylesheet"> -->

            <!-- BEGIN SETTINGS -->
            <!-- Remove this after purchasing -->
            <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
            <script src="js/settings.js"></script>
            <style>
                body {
                    opacity: 0;
                }
            </style>
            <!-- END SETTINGS -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-120946860-10"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag() { dataLayer.push(arguments); }
                gtag('js', new Date());

                gtag('config', 'UA-120946860-10', { 'anonymize_ip': true });
            </script>
        </head>
        <!--
      HOW TO USE: 
      data-theme: default (default), dark, light, colored
      data-layout: fluid (default), boxed
      data-sidebar-position: left (default), right
      data-sidebar-layout: default (default), compact
    -->

        <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
            <div class="wrapper">
                <nav id="sidebar" class="sidebar js-sidebar">
                    <div class="sidebar-content js-simplebar">
                        <a class="sidebar-brand" href="index.html">
                            <span class="sidebar-brand-text align-middle">
                                AdminKit
                                <sup><small class="badge bg-primary text-uppercase">Pro</small></sup>
                            </span>
                            <svg class="sidebar-brand-icon align-middle" width="32px" height="32px" viewBox="0 0 24 24"
                                fill="none" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="square"
                                stroke-linejoin="miter" color="#FFFFFF" style="margin-left: -3px">
                                <path d="M12 4L20 8.00004L12 12L4 8.00004L12 4Z"></path>
                                <path d="M20 12L12 16L4 12"></path>
                                <path d="M20 16L12 20L4 16"></path>
                            </svg>
                        </a>

                        <div class="sidebar-user">
                            <div class="d-flex justify-content-center">
                                <div class="flex-shrink-0">
                                    <img src="img/avatars/avatar.jpg" class="avatar img-fluid rounded me-1"
                                        alt="Charles Hall" />
                                </div>
                                <div class="flex-grow-1 ps-2">
                                    <a class="sidebar-user-title dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                        Charles Hall
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-start">
                                        <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1"
                                                data-feather="user"></i> Profile</a>
                                        <a class="dropdown-item" href="#"><i class="align-middle me-1"
                                                data-feather="pie-chart"></i> Analytics</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="pages-settings.html"><i class="align-middle me-1"
                                                data-feather="settings"></i> Settings &
                                            Privacy</a>
                                        <a class="dropdown-item" href="#"><i class="align-middle me-1"
                                                data-feather="help-circle"></i> Help Center</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Log out</a>
                                    </div>

                                    <div class="sidebar-user-subtitle">Designer</div>
                                </div>
                            </div>
                        </div>

                        <ul class="sidebar-nav">
                            <li class="sidebar-header">
                                Pages
                            </li>
                            <li class="sidebar-item active">
                                <a data-bs-target="#dashboards" data-bs-toggle="collapse" class="sidebar-link">
                                    <i class="align-middle" data-feather="sliders"></i> <span
                                        class="align-middle">Dashboards</span>
                                </a>
                                <ul id="dashboards" class="sidebar-dropdown list-unstyled collapse show"
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item active"><a class="sidebar-link"
                                            href="index.html">Analytics</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="dashboard-ecommerce.html">E-Commerce <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="dashboard-crypto.html">Crypto
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                </ul>
                            </li>

                            <li class="sidebar-item">
                                <a data-bs-target="#pages" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="layout"></i> <span
                                        class="align-middle">Pages</span>
                                </a>
                                <ul id="pages" class="sidebar-dropdown list-unstyled collapse "
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="pages-settings.html">Settings</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-projects.html">Projects
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-clients.html">Clients
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-pricing.html">Pricing
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-chat.html">Chat <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-blank.html">Blank
                                            Page</a></li>
                                </ul>
                            </li>

                            <li class="sidebar-item">
                                <a class="sidebar-link" href="pages-profile.html">
                                    <i class="align-middle" data-feather="user"></i> <span
                                        class="align-middle">Profile</span>
                                </a>
                            </li>

                            <li class="sidebar-item">
                                <a class="sidebar-link" href="pages-invoice.html">
                                    <i class="align-middle" data-feather="credit-card"></i> <span
                                        class="align-middle">Invoice</span>
                                </a>
                            </li>

                            <li class="sidebar-item">
                                <a class="sidebar-link" href="pages-tasks.html">
                                    <i class="align-middle" data-feather="list"></i> <span
                                        class="align-middle">Tasks</span>
                                    <span class="sidebar-badge badge bg-primary">Pro</span>
                                </a>
                            </li>

                            <li class="sidebar-item">
                                <a class="sidebar-link" href="calendar.html">
                                    <i class="align-middle" data-feather="calendar"></i> <span
                                        class="align-middle">Calendar</span>
                                    <span class="sidebar-badge badge bg-primary">Pro</span>
                                </a>
                            </li>

                            <li class="sidebar-item">
                                <a href="#auth" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="users"></i> <span
                                        class="align-middle">Auth</span>
                                </a>
                                <ul id="auth" class="sidebar-dropdown list-unstyled collapse "
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-sign-in.html">Sign
                                            In</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-sign-up.html">Sign
                                            Up</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="pages-reset-password.html">Reset Password <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-404.html">404 Page
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="pages-500.html">500 Page
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                </ul>
                            </li>

                            <li class="sidebar-header">
                                Components
                            </li>
                            <li class="sidebar-item">
                                <a data-bs-target="#ui" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="briefcase"></i> <span class="align-middle">UI
                                        Elements</span>
                                </a>
                                <ul id="ui" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link" href="ui-alerts.html">Alerts</a>
                                    </li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="ui-buttons.html">Buttons</a>
                                    </li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="ui-cards.html">Cards</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="ui-general.html">General</a>
                                    </li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="ui-grid.html">Grid</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="ui-modals.html">Modals</a>
                                    </li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="ui-offcanvas.html">Offcanvas
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="ui-placeholders.html">Placeholders <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="ui-tabs.html">Tabs <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="ui-typography.html">Typography</a></li>
                                </ul>
                            </li>
                            <li class="sidebar-item">
                                <a data-bs-target="#icons" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="coffee"></i> <span
                                        class="align-middle">Icons</span>
                                    <span class="sidebar-badge badge bg-light">1.500+</span>
                                </a>
                                <ul id="icons" class="sidebar-dropdown list-unstyled collapse "
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="icons-feather.html">Feather</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="icons-font-awesome.html">Font
                                            Awesome <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                </ul>
                            </li>
                            <li class="sidebar-item">
                                <a data-bs-target="#forms" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="check-circle"></i> <span
                                        class="align-middle">Forms</span>
                                </a>
                                <ul id="forms" class="sidebar-dropdown list-unstyled collapse "
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="forms-basic-inputs.html">Basic Inputs</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="forms-layouts.html">Form
                                            Layouts <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="forms-input-groups.html">Input Groups <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                </ul>
                            </li>
                            <li class="sidebar-item">
                                <a class="sidebar-link" href="tables-bootstrap.html">
                                    <i class="align-middle" data-feather="list"></i> <span
                                        class="align-middle">Tables</span>
                                </a>
                            </li>

                            <li class="sidebar-header">
                                Plugins & Addons
                            </li>
                            <li class="sidebar-item">
                                <a data-bs-target="#form-plugins" data-bs-toggle="collapse"
                                    class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="check-square"></i> <span
                                        class="align-middle">Form Plugins</span>
                                </a>
                                <ul id="form-plugins" class="sidebar-dropdown list-unstyled collapse "
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="forms-advanced-inputs.html">Advanced Inputs <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="forms-editors.html">Editors
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="forms-validation.html">Validation <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                </ul>
                            </li>
                            <li class="sidebar-item">
                                <a data-bs-target="#datatables" data-bs-toggle="collapse"
                                    class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="list"></i> <span
                                        class="align-middle">DataTables</span>
                                </a>
                                <ul id="datatables" class="sidebar-dropdown list-unstyled collapse "
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="tables-datatables-responsive.html">Responsive Table <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="tables-datatables-buttons.html">Table with Buttons <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="tables-datatables-column-search.html">Column Search <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="tables-datatables-fixed-header.html">Fixed Header <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="tables-datatables-multi.html">Multi Selection <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="tables-datatables-ajax.html">Ajax Sourced Data <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                </ul>
                            </li>
                            <li class="sidebar-item">
                                <a data-bs-target="#charts" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="bar-chart-2"></i> <span
                                        class="align-middle">Charts</span>
                                </a>
                                <ul id="charts" class="sidebar-dropdown list-unstyled collapse "
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="charts-chartjs.html">Chart.js</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link"
                                            href="charts-apexcharts.html">ApexCharts <span
                                                class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                </ul>
                            </li>
                            <li class="sidebar-item">
                                <a class="sidebar-link" href="notifications.html">
                                    <i class="align-middle" data-feather="bell"></i> <span
                                        class="align-middle">Notifications</span>
                                    <span class="sidebar-badge badge bg-primary">Pro</span>
                                </a>
                            </li>
                            <li class="sidebar-item">
                                <a data-bs-target="#maps" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="map"></i> <span
                                        class="align-middle">Maps</span>
                                </a>
                                <ul id="maps" class="sidebar-dropdown list-unstyled collapse "
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item"><a class="sidebar-link" href="maps-google.html">Google
                                            Maps</a></li>
                                    <li class="sidebar-item"><a class="sidebar-link" href="maps-vector.html">Vector Maps
                                            <span class="sidebar-badge badge bg-primary">Pro</span></a></li>
                                </ul>
                            </li>

                            <li class="sidebar-item">
                                <a data-bs-target="#multi" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="corner-right-down"></i> <span
                                        class="align-middle">Multi Level</span>
                                </a>
                                <ul id="multi" class="sidebar-dropdown list-unstyled collapse"
                                    data-bs-parent="#sidebar">
                                    <li class="sidebar-item">
                                        <a data-bs-target="#multi-2" data-bs-toggle="collapse"
                                            class="sidebar-link collapsed">Two Levels</a>
                                        <ul id="multi-2" class="sidebar-dropdown list-unstyled collapse">
                                            <li class="sidebar-item">
                                                <a class="sidebar-link" href="#">Item 1</a>
                                                <a class="sidebar-link" href="#">Item 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="sidebar-item">
                                        <a data-bs-target="#multi-3" data-bs-toggle="collapse"
                                            class="sidebar-link collapsed">Three Levels</a>
                                        <ul id="multi-3" class="sidebar-dropdown list-unstyled collapse">
                                            <li class="sidebar-item">
                                                <a data-bs-target="#multi-3-1" data-bs-toggle="collapse"
                                                    class="sidebar-link collapsed">Item 1</a>
                                                <ul id="multi-3-1" class="sidebar-dropdown list-unstyled collapse">
                                                    <li class="sidebar-item">
                                                        <a class="sidebar-link" href="#">Item 1</a>
                                                        <a class="sidebar-link" href="#">Item 2</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sidebar-item">
                                                <a class="sidebar-link" href="#">Item 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>

                        <div class="sidebar-cta">
                            <div class="sidebar-cta-content">
                                <strong class="d-inline-block mb-2">Weekly Sales Report</strong>
                                <div class="mb-3 text-sm">
                                    Your weekly sales report is ready for download!
                                </div>

                                <div class="d-grid">
                                    <a href="https://adminkit.io/" class="btn btn-outline-primary"
                                        target="_blank">Download</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>

                <div class="main">
                    <nav class="navbar navbar-expand navbar-light navbar-bg">
                        <a class="sidebar-toggle js-sidebar-toggle">
                            <i class="hamburger align-self-center"></i>
                        </a>

                        <form class="d-none d-sm-inline-block">
                            <div class="input-group input-group-navbar">
                                <input type="text" class="form-control" placeholder="Search…" aria-label="Search">
                                <button class="btn" type="button">
                                    <i class="align-middle" data-feather="search"></i>
                                </button>
                            </div>
                        </form>

                        <ul class="navbar-nav d-none d-lg-flex">
                            <li class="nav-item px-2 dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="megaDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Mega Menu
                                </a>
                                <div class="dropdown-menu dropdown-menu-start dropdown-mega"
                                    aria-labelledby="megaDropdown">
                                    <div class="d-md-flex align-items-start justify-content-start">
                                        <div class="dropdown-mega-list">
                                            <div class="dropdown-header">UI Elements</div>
                                            <a class="dropdown-item" href="#">Alerts</a>
                                            <a class="dropdown-item" href="#">Buttons</a>
                                            <a class="dropdown-item" href="#">Cards</a>
                                            <a class="dropdown-item" href="#">Carousel</a>
                                            <a class="dropdown-item" href="#">General</a>
                                            <a class="dropdown-item" href="#">Grid</a>
                                            <a class="dropdown-item" href="#">Modals</a>
                                            <a class="dropdown-item" href="#">Tabs</a>
                                            <a class="dropdown-item" href="#">Typography</a>
                                        </div>
                                        <div class="dropdown-mega-list">
                                            <div class="dropdown-header">Forms</div>
                                            <a class="dropdown-item" href="#">Layouts</a>
                                            <a class="dropdown-item" href="#">Basic Inputs</a>
                                            <a class="dropdown-item" href="#">Input Groups</a>
                                            <a class="dropdown-item" href="#">Advanced Inputs</a>
                                            <a class="dropdown-item" href="#">Editors</a>
                                            <a class="dropdown-item" href="#">Validation</a>
                                            <a class="dropdown-item" href="#">Wizard</a>
                                        </div>
                                        <div class="dropdown-mega-list">
                                            <div class="dropdown-header">Tables</div>
                                            <a class="dropdown-item" href="#">Basic Tables</a>
                                            <a class="dropdown-item" href="#">Responsive Table</a>
                                            <a class="dropdown-item" href="#">Table with Buttons</a>
                                            <a class="dropdown-item" href="#">Column Search</a>
                                            <a class="dropdown-item" href="#">Muulti Selection</a>
                                            <a class="dropdown-item" href="#">Ajax Sourced Data</a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="resourcesDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Resources
                                </a>
                                <div class="dropdown-menu" aria-labelledby="resourcesDropdown">
                                    <a class="dropdown-item" href="https://adminkit.io/" target="_blank"><i
                                            class="align-middle me-1" data-feather="home"></i>
                                        Homepage</a>
                                    <a class="dropdown-item" href="https://adminkit.io/docs/" target="_blank"><i
                                            class="align-middle me-1" data-feather="book-open"></i>
                                        Documentation</a>
                                    <a class="dropdown-item" href="https://adminkit.io/docs/getting-started/changelog/"
                                        target="_blank"><i class="align-middle me-1" data-feather="edit"></i>
                                        Changelog</a>
                                </div>
                            </li>
                        </ul>

                        <div class="navbar-collapse collapse">
                            <ul class="navbar-nav navbar-align">
                                <li class="nav-item dropdown">
                                    <a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown"
                                        data-bs-toggle="dropdown">
                                        <div class="position-relative">
                                            <i class="align-middle" data-feather="bell"></i>
                                            <span class="indicator">4</span>
                                        </div>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0"
                                        aria-labelledby="alertsDropdown">
                                        <div class="dropdown-menu-header">
                                            4 New Notifications
                                        </div>
                                        <div class="list-group">
                                            <a href="#" class="list-group-item">
                                                <div class="row g-0 align-items-center">
                                                    <div class="col-2">
                                                        <i class="text-danger" data-feather="alert-circle"></i>
                                                    </div>
                                                    <div class="col-10">
                                                        <div class="text-dark">Update completed</div>
                                                        <div class="text-muted small mt-1">Restart server 12 to complete
                                                            the update.</div>
                                                        <div class="text-muted small mt-1">30m ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <div class="row g-0 align-items-center">
                                                    <div class="col-2">
                                                        <i class="text-warning" data-feather="bell"></i>
                                                    </div>
                                                    <div class="col-10">
                                                        <div class="text-dark">Lorem ipsum</div>
                                                        <div class="text-muted small mt-1">Aliquam ex eros, imperdiet
                                                            vulputate hendrerit et.</div>
                                                        <div class="text-muted small mt-1">2h ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <div class="row g-0 align-items-center">
                                                    <div class="col-2">
                                                        <i class="text-primary" data-feather="home"></i>
                                                    </div>
                                                    <div class="col-10">
                                                        <div class="text-dark">Login from 192.186.1.8</div>
                                                        <div class="text-muted small mt-1">5h ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <div class="row g-0 align-items-center">
                                                    <div class="col-2">
                                                        <i class="text-success" data-feather="user-plus"></i>
                                                    </div>
                                                    <div class="col-10">
                                                        <div class="text-dark">New connection</div>
                                                        <div class="text-muted small mt-1">Christina accepted your
                                                            request.</div>
                                                        <div class="text-muted small mt-1">14h ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="dropdown-menu-footer">
                                            <a href="#" class="text-muted">Show all notifications</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown"
                                        data-bs-toggle="dropdown">
                                        <div class="position-relative">
                                            <i class="align-middle" data-feather="message-square"></i>
                                        </div>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0"
                                        aria-labelledby="messagesDropdown">
                                        <div class="dropdown-menu-header">
                                            <div class="position-relative">
                                                4 New Messages
                                            </div>
                                        </div>
                                        <div class="list-group">
                                            <a href="#" class="list-group-item">
                                                <div class="row g-0 align-items-center">
                                                    <div class="col-2">
                                                        <img src="img/avatars/avatar-5.jpg"
                                                            class="avatar img-fluid rounded-circle"
                                                            alt="Vanessa Tucker">
                                                    </div>
                                                    <div class="col-10 ps-2">
                                                        <div class="text-dark">Vanessa Tucker</div>
                                                        <div class="text-muted small mt-1">Nam pretium turpis et arcu.
                                                            Duis arcu tortor.</div>
                                                        <div class="text-muted small mt-1">15m ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <div class="row g-0 align-items-center">
                                                    <div class="col-2">
                                                        <img src="img/avatars/avatar-2.jpg"
                                                            class="avatar img-fluid rounded-circle"
                                                            alt="William Harris">
                                                    </div>
                                                    <div class="col-10 ps-2">
                                                        <div class="text-dark">William Harris</div>
                                                        <div class="text-muted small mt-1">Curabitur ligula sapien
                                                            euismod vitae.</div>
                                                        <div class="text-muted small mt-1">2h ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <div class="row g-0 align-items-center">
                                                    <div class="col-2">
                                                        <img src="img/avatars/avatar-4.jpg"
                                                            class="avatar img-fluid rounded-circle"
                                                            alt="Christina Mason">
                                                    </div>
                                                    <div class="col-10 ps-2">
                                                        <div class="text-dark">Christina Mason</div>
                                                        <div class="text-muted small mt-1">Pellentesque auctor neque nec
                                                            urna.</div>
                                                        <div class="text-muted small mt-1">4h ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <div class="row g-0 align-items-center">
                                                    <div class="col-2">
                                                        <img src="img/avatars/avatar-3.jpg"
                                                            class="avatar img-fluid rounded-circle"
                                                            alt="Sharon Lessman">
                                                    </div>
                                                    <div class="col-10 ps-2">
                                                        <div class="text-dark">Sharon Lessman</div>
                                                        <div class="text-muted small mt-1">Aenean tellus metus, bibendum
                                                            sed, posuere ac, mattis non.</div>
                                                        <div class="text-muted small mt-1">5h ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="dropdown-menu-footer">
                                            <a href="#" class="text-muted">Show all messages</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-flag dropdown-toggle" href="#" id="languageDropdown"
                                        data-bs-toggle="dropdown">
                                        <img src="img/flags/us.png" alt="English" />
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="languageDropdown">
                                        <a class="dropdown-item" href="#">
                                            <img src="img/flags/us.png" alt="English" width="20"
                                                class="align-middle me-1" />
                                            <span class="align-middle">English</span>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <img src="img/flags/es.png" alt="Spanish" width="20"
                                                class="align-middle me-1" />
                                            <span class="align-middle">Spanish</span>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <img src="img/flags/ru.png" alt="Russian" width="20"
                                                class="align-middle me-1" />
                                            <span class="align-middle">Russian</span>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <img src="img/flags/de.png" alt="German" width="20"
                                                class="align-middle me-1" />
                                            <span class="align-middle">German</span>
                                        </a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-icon js-fullscreen d-none d-lg-block" href="#">
                                        <div class="position-relative">
                                            <i class="align-middle" data-feather="maximize"></i>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-icon pe-md-0 dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                        <img src="img/avatars/avatar.jpg" class="avatar img-fluid rounded"
                                            alt="Charles Hall" />
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end">
                                        <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1"
                                                data-feather="user"></i> Profile</a>
                                        <a class="dropdown-item" href="#"><i class="align-middle me-1"
                                                data-feather="pie-chart"></i> Analytics</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="pages-settings.html"><i class="align-middle me-1"
                                                data-feather="settings"></i> Settings &
                                            Privacy</a>
                                        <a class="dropdown-item" href="#"><i class="align-middle me-1"
                                                data-feather="help-circle"></i> Help Center</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Log out</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>

                    <main class="content">
                        <div class="container-fluid p-0">

                            <div class="row mb-2 mb-xl-3">
                                <div class="col-auto d-none d-sm-block">
                                    <h3><strong>Analytics</strong> Dashboard</h3>
                                </div>

                                <div class="col-auto ms-auto text-end mt-n1">
                                    <a href="#" class="btn btn-light bg-white me-2">Invite a Friend</a>
                                    <a href="#" class="btn btn-primary">New Project</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-6 col-xxl-5 d-flex">
                                    <div class="w-100">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col mt-0">
                                                                <h5 class="card-title">Sales</h5>
                                                            </div>

                                                            <div class="col-auto">
                                                                <div class="stat text-primary">
                                                                    <i class="align-middle" data-feather="truck"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <h1 class="mt-1 mb-3">2.382</h1>
                                                        <div class="mb-0">
                                                            <span class="badge badge-primary-light"> <i
                                                                    class="mdi mdi-arrow-bottom-right"></i> -3.65%
                                                            </span>
                                                            <span class="text-muted">Since last week</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col mt-0">
                                                                <h5 class="card-title">Visitors</h5>
                                                            </div>

                                                            <div class="col-auto">
                                                                <div class="stat text-primary">
                                                                    <i class="align-middle" data-feather="users"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <h1 class="mt-1 mb-3">14.212</h1>
                                                        <div class="mb-0">
                                                            <span class="badge badge-success-light"> <i
                                                                    class="mdi mdi-arrow-bottom-right"></i> 5.25%
                                                            </span>
                                                            <span class="text-muted">Since last week</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col mt-0">
                                                                <h5 class="card-title">Earnings</h5>
                                                            </div>

                                                            <div class="col-auto">
                                                                <div class="stat text-primary">
                                                                    <i class="align-middle"
                                                                        data-feather="dollar-sign"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <h1 class="mt-1 mb-3">$21.300</h1>
                                                        <div class="mb-0">
                                                            <span class="badge badge-success-light"> <i
                                                                    class="mdi mdi-arrow-bottom-right"></i> 6.65%
                                                            </span>
                                                            <span class="text-muted">Since last week</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col mt-0">
                                                                <h5 class="card-title">Orders</h5>
                                                            </div>

                                                            <div class="col-auto">
                                                                <div class="stat text-primary">
                                                                    <i class="align-middle"
                                                                        data-feather="shopping-cart"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <h1 class="mt-1 mb-3">64</h1>
                                                        <div class="mb-0">
                                                            <span class="badge badge-danger-light"> <i
                                                                    class="mdi mdi-arrow-bottom-right"></i> -2.25%
                                                            </span>
                                                            <span class="text-muted">Since last week</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-xxl-7">
                                    <div class="card flex-fill w-100">
                                        <div class="card-header">
                                            <div class="float-end">
                                                <form class="row g-2">
                                                    <div class="col-auto">
                                                        <select class="form-select form-select-sm bg-light border-0">
                                                            <option>Jan</option>
                                                            <option value="1">Feb</option>
                                                            <option value="2">Mar</option>
                                                            <option value="3">Apr</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-auto">
                                                        <input type="text"
                                                            class="form-control form-control-sm bg-light rounded-2 border-0"
                                                            style="width: 100px;" placeholder="Search..">
                                                    </div>
                                                </form>
                                            </div>
                                            <h5 class="card-title mb-0">Recent Movement</h5>
                                        </div>
                                        <div class="card-body pt-2 pb-3">
                                            <div class="chart chart-sm">
                                                <canvas id="chartjs-dashboard-line"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12 col-md-6 col-xxl-3 d-flex order-1 order-xxl-3">
                                    <div class="card flex-fill w-100">
                                        <div class="card-header">
                                            <div class="card-actions float-end">
                                                <div class="dropdown position-relative">
                                                    <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                                        <i class="align-middle" data-feather="more-horizontal"></i>
                                                    </a>

                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <h5 class="card-title mb-0">Browser Usage</h5>
                                        </div>
                                        <div class="card-body d-flex">
                                            <div class="align-self-center w-100">
                                                <div class="py-3">
                                                    <div class="chart chart-xs">
                                                        <canvas id="chartjs-dashboard-pie"></canvas>
                                                    </div>
                                                </div>

                                                <table class="table mb-0">
                                                    <tbody>
                                                        <tr>
                                                            <td><i class="fas fa-circle text-primary fa-fw"></i> Chrome
                                                                <span class="badge badge-success-light">+12%</span>
                                                            </td>
                                                            <td class="text-end">4306</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-circle text-warning fa-fw"></i> Firefox
                                                                <span class="badge badge-danger-light">-3%</span>
                                                            </td>
                                                            <td class="text-end">3801</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-circle text-danger fa-fw"></i> Edge
                                                            </td>
                                                            <td class="text-end">1689</td>
                                                        </tr>
                                                        <tr>
                                                            <td><i class="fas fa-circle text-dark fa-fw"></i> Other</td>
                                                            <td class="text-end">3251</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-12 col-xxl-6 d-flex order-3 order-xxl-2">
                                    <div class="card flex-fill w-100">
                                        <div class="card-header">
                                            <div class="card-actions float-end">
                                                <div class="dropdown position-relative">
                                                    <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                                        <i class="align-middle" data-feather="more-horizontal"></i>
                                                    </a>

                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <h5 class="card-title mb-0">Real-Time</h5>
                                        </div>
                                        <div class="card-body px-4">
                                            <div id="world_map" style="height:350px;"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-xxl-3 d-flex order-2 order-xxl-1">
                                    <div class="card flex-fill">
                                        <div class="card-header">
                                            <div class="card-actions float-end">
                                                <div class="dropdown position-relative">
                                                    <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                                        <i class="align-middle" data-feather="more-horizontal"></i>
                                                    </a>

                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <h5 class="card-title mb-0">Calendar</h5>
                                        </div>
                                        <div class="card-body d-flex">
                                            <div class="align-self-center w-100">
                                                <div class="chart">
                                                    <div id="datetimepicker-dashboard"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12 col-lg-8 col-xxl-9 d-flex">
                                    <div class="card flex-fill">
                                        <div class="card-header">
                                            <div class="card-actions float-end">
                                                <div class="dropdown position-relative">
                                                    <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                                        <i class="align-middle" data-feather="more-horizontal"></i>
                                                    </a>

                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <h5 class="card-title mb-0">Latest Projects</h5>
                                        </div>
                                        <table class="table table-borderless my-0">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th class="d-none d-xxl-table-cell">Company</th>
                                                    <th class="d-none d-xl-table-cell">Author</th>
                                                    <th>Status</th>
                                                    <th class="d-none d-xl-table-cell">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="flex-shrink-0">
                                                                <div class="bg-light rounded-2">
                                                                    <img class="p-2" src="img/icons/brand-1.svg">
                                                                </div>
                                                            </div>
                                                            <div class="flex-grow-1 ms-3">
                                                                <strong>Project Apollo</strong>
                                                                <div class="text-muted">
                                                                    Web, UI/UX Design
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xxl-table-cell">
                                                        <strong>Lechters</strong>
                                                        <div class="text-muted">
                                                            Real Estate
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <strong>Vanessa Tucker</strong>
                                                        <div class="text-muted">
                                                            HTML, JS, React
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column w-100">
                                                            <span class="me-2 mb-1 text-muted">65%</span>
                                                            <div class="progress progress-sm bg-success-light w-100">
                                                                <div class="progress-bar bg-success" role="progressbar"
                                                                    style="width: 65%;"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <a href="#" class="btn btn-light">View</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="flex-shrink-0">
                                                                <div class="bg-light rounded-2">
                                                                    <img class="p-2" src="img/icons/brand-2.svg">
                                                                </div>
                                                            </div>
                                                            <div class="flex-grow-1 ms-3">
                                                                <strong>Project Bongo</strong>
                                                                <div class="text-muted">
                                                                    Web
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xxl-table-cell">
                                                        <strong>Cellophane Transportation</strong>
                                                        <div class="text-muted">
                                                            Transportation
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <strong>William Harris</strong>
                                                        <div class="text-muted">
                                                            HTML, JS, Vue
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column w-100">
                                                            <span class="me-2 mb-1 text-muted">33%</span>
                                                            <div class="progress progress-sm bg-danger-light w-100">
                                                                <div class="progress-bar bg-danger" role="progressbar"
                                                                    style="width: 33%;"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <a href="#" class="btn btn-light">View</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="flex-shrink-0">
                                                                <div class="bg-light rounded-2">
                                                                    <img class="p-2" src="img/icons/brand-3.svg">
                                                                </div>
                                                            </div>
                                                            <div class="flex-grow-1 ms-3">
                                                                <strong>Project Canary</strong>
                                                                <div class="text-muted">
                                                                    Web, UI/UX Design
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xxl-table-cell">
                                                        <strong>Clemens</strong>
                                                        <div class="text-muted">
                                                            Insurance
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <strong>Sharon Lessman</strong>
                                                        <div class="text-muted">
                                                            HTML, JS, Laravel
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column w-100">
                                                            <span class="me-2 mb-1 text-muted">50%</span>
                                                            <div class="progress progress-sm bg-warning-light w-100">
                                                                <div class="progress-bar bg-warning" role="progressbar"
                                                                    style="width: 50%;"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <a href="#" class="btn btn-light">View</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="flex-shrink-0">
                                                                <div class="bg-light rounded-2">
                                                                    <img class="p-2" src="img/icons/brand-4.svg">
                                                                </div>
                                                            </div>
                                                            <div class="flex-grow-1 ms-3">
                                                                <strong>Project Edison</strong>
                                                                <div class="text-muted">
                                                                    UI/UX Design
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xxl-table-cell">
                                                        <strong>Affinity Investment Group</strong>
                                                        <div class="text-muted">
                                                            Finance
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <strong>Vanessa Tucker</strong>
                                                        <div class="text-muted">
                                                            HTML, JS, React
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column w-100">
                                                            <span class="me-2 mb-1 text-muted">80%</span>
                                                            <div class="progress progress-sm bg-success-light w-100">
                                                                <div class="progress-bar bg-success" role="progressbar"
                                                                    style="width: 80%;"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <a href="#" class="btn btn-light">View</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex">
                                                            <div class="flex-shrink-0">
                                                                <div class="bg-light rounded-2">
                                                                    <img class="p-2" src="img/icons/brand-5.svg">
                                                                </div>
                                                            </div>
                                                            <div class="flex-grow-1 ms-3">
                                                                <strong>Project Indigo</strong>
                                                                <div class="text-muted">
                                                                    Web, UI/UX Design
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xxl-table-cell">
                                                        <strong>Konsili</strong>
                                                        <div class="text-muted">
                                                            Retail
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <strong>Christina Mason</strong>
                                                        <div class="text-muted">
                                                            HTML, JS, Vue
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column w-100">
                                                            <span class="me-2 mb-1 text-muted">78%</span>
                                                            <div class="progress progress-sm bg-primary-light w-100">
                                                                <div class="progress-bar bg-primary" role="progressbar"
                                                                    style="width: 78%;"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="d-none d-xl-table-cell">
                                                        <a href="#" class="btn btn-light">View</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4 col-xxl-3 d-flex">
                                    <div class="card flex-fill w-100">
                                        <div class="card-header">
                                            <div class="card-actions float-end">
                                                <div class="dropdown position-relative">
                                                    <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                                        <i class="align-middle" data-feather="more-horizontal"></i>
                                                    </a>

                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <h5 class="card-title mb-0">Monthly Sales</h5>
                                        </div>
                                        <div class="card-body d-flex w-100">
                                            <div class="align-self-center chart chart-lg">
                                                <canvas id="chartjs-dashboard-bar"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </main>

                    <footer class="footer">
                        <div class="container-fluid">
                            <div class="row text-muted">
                                <div class="col-6 text-start">
                                    <p class="mb-0">
                                        <a href="https://adminkit.io/" target="_blank"
                                            class="text-muted"><strong>AdminKit</strong></a> &copy;
                                    </p>
                                </div>
                                <div class="col-6 text-end">
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="text-muted" href="#">Support</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="text-muted" href="#">Help Center</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="text-muted" href="#">Privacy</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="text-muted" href="#">Terms</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>

            <script src="js/app.js"></script>

            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
                    var gradientLight = ctx.createLinearGradient(0, 0, 0, 225);
                    gradientLight.addColorStop(0, "rgba(215, 227, 244, 1)");
                    gradientLight.addColorStop(1, "rgba(215, 227, 244, 0)");
                    var gradientDark = ctx.createLinearGradient(0, 0, 0, 225);
                    gradientDark.addColorStop(0, "rgba(51, 66, 84, 1)");
                    gradientDark.addColorStop(1, "rgba(51, 66, 84, 0)");
                    // Line chart
                    new Chart(document.getElementById("chartjs-dashboard-line"), {
                        type: "line",
                        data: {
                            labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                            datasets: [{
                                label: "Sales ($)",
                                fill: true,
                                backgroundColor: window.theme.id === "light" ? gradientLight : gradientDark,
                                borderColor: window.theme.primary,
                                data: [
                                    2115,
                                    1562,
                                    1584,
                                    1892,
                                    1587,
                                    1923,
                                    2566,
                                    2448,
                                    2805,
                                    3438,
                                    2917,
                                    3327
                                ]
                            }]
                        },
                        options: {
                            maintainAspectRatio: false,
                            legend: {
                                display: false
                            },
                            tooltips: {
                                intersect: false
                            },
                            hover: {
                                intersect: true
                            },
                            plugins: {
                                filler: {
                                    propagate: false
                                }
                            },
                            scales: {
                                xAxes: [{
                                    reverse: true,
                                    gridLines: {
                                        color: "rgba(0,0,0,0.0)"
                                    }
                                }],
                                yAxes: [{
                                    ticks: {
                                        stepSize: 1000
                                    },
                                    display: true,
                                    borderDash: [3, 3],
                                    gridLines: {
                                        color: "rgba(0,0,0,0.0)",
                                        fontColor: "#fff"
                                    }
                                }]
                            }
                        }
                    });
                });
            </script>
            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    // Pie chart
                    new Chart(document.getElementById("chartjs-dashboard-pie"), {
                        type: "pie",
                        data: {
                            labels: ["Chrome", "Firefox", "IE", "Other"],
                            datasets: [{
                                data: [4306, 3801, 1689, 3251],
                                backgroundColor: [
                                    window.theme.primary,
                                    window.theme.warning,
                                    window.theme.danger,
                                    "#E8EAED"
                                ],
                                borderWidth: 5,
                                borderColor: window.theme.white
                            }]
                        },
                        options: {
                            responsive: !window.MSInputMethodContext,
                            maintainAspectRatio: false,
                            legend: {
                                display: false
                            },
                            cutoutPercentage: 70
                        }
                    });
                });
            </script>
            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    // Bar chart
                    new Chart(document.getElementById("chartjs-dashboard-bar"), {
                        type: "bar",
                        data: {
                            labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                            datasets: [{
                                label: "This year",
                                backgroundColor: window.theme.primary,
                                borderColor: window.theme.primary,
                                hoverBackgroundColor: window.theme.primary,
                                hoverBorderColor: window.theme.primary,
                                data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
                                barPercentage: .75,
                                categoryPercentage: .5
                            }]
                        },
                        options: {
                            maintainAspectRatio: false,
                            legend: {
                                display: false
                            },
                            scales: {
                                yAxes: [{
                                    gridLines: {
                                        display: false
                                    },
                                    stacked: false,
                                    ticks: {
                                        stepSize: 20
                                    }
                                }],
                                xAxes: [{
                                    stacked: false,
                                    gridLines: {
                                        color: "transparent"
                                    }
                                }]
                            }
                        }
                    });
                });
            </script>
            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    var markers = [{
                        coords: [31.230391, 121.473701],
                        name: "Shanghai"
                    },
                    {
                        coords: [28.704060, 77.102493],
                        name: "Delhi"
                    },
                    {
                        coords: [6.524379, 3.379206],
                        name: "Lagos"
                    },
                    {
                        coords: [35.689487, 139.691711],
                        name: "Tokyo"
                    },
                    {
                        coords: [23.129110, 113.264381],
                        name: "Guangzhou"
                    },
                    {
                        coords: [40.7127837, -74.0059413],
                        name: "New York"
                    },
                    {
                        coords: [34.052235, -118.243683],
                        name: "Los Angeles"
                    },
                    {
                        coords: [41.878113, -87.629799],
                        name: "Chicago"
                    },
                    {
                        coords: [51.507351, -0.127758],
                        name: "London"
                    },
                    {
                        coords: [40.416775, -3.703790],
                        name: "Madrid "
                    }
                    ];
                    var map = new jsVectorMap({
                        map: "world",
                        selector: "#world_map",
                        zoomButtons: true,
                        markers: markers,
                        markerStyle: {
                            initial: {
                                r: 9,
                                stroke: window.theme.white,
                                strokeWidth: 7,
                                stokeOpacity: .4,
                                fill: window.theme.primary
                            },
                            hover: {
                                fill: window.theme.primary,
                                stroke: window.theme.primary
                            }
                        },
                        regionStyle: {
                            initial: {
                                fill: window.theme["gray-200"]
                            }
                        },
                        zoomOnScroll: false
                    });
                    window.addEventListener("resize", () => {
                        map.updateSize();
                    });
                    setTimeout(function () {
                        map.updateSize();
                    }, 250);
                });
            </script>
            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
                    var defaultDate = date.getUTCFullYear() + "-" + (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
                    document.getElementById("datetimepicker-dashboard").flatpickr({
                        inline: true,
                        prevArrow: "<span class=\"fas fa-chevron-left\" title=\"Previous month\"></span>",
                        nextArrow: "<span class=\"fas fa-chevron-right\" title=\"Next month\"></span>",
                        defaultDate: defaultDate
                    });
                });
            </script>

            <script>
                document.addEventListener("DOMContentLoaded", function (event) {
                    setTimeout(function () {
                        if (localStorage.getItem('popState') !== 'shown') {
                            window.notyf.open({
                                type: "success",
                                message: "Get access to all 500+ components and 45+ pages with AdminKit PRO. <u><a class=\"text-white\" href=\"https://adminkit.io/pricing\" target=\"_blank\">More info</a></u> 🚀",
                                duration: 10000,
                                ripple: true,
                                dismissible: false,
                                position: {
                                    x: "left",
                                    y: "bottom"
                                }
                            });

                            localStorage.setItem('popState', 'shown');
                        }
                    }, 15000);
                });
            </script>
        </body>

        </html>