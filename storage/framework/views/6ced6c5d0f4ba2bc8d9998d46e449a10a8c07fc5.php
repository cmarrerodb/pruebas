<!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <!-- LOGO -->
    <div class="navbar-brand-box">
        <a href="index" class="logo logo-dark">
            <span class="logo-sm">
                <img src="<?php echo e(URL::asset('assets/images/logo-dark-sm.png')); ?>" alt="" height="22">
            </span>
            <span class="logo-lg">
                <img src="<?php echo e(URL::asset('assets/images/logo-dark.png')); ?>" alt="" height="22">
            </span>
        </a>

        <a href="index" class="logo logo-light">
            <span class="logo-lg">
                <img src="<?php echo e(URL::asset('assets/images/logo-light.png')); ?>" alt="" height="22">
            </span>
            <span class="logo-sm">
                <img src="<?php echo e(URL::asset('assets/images/logo-light-sm.png')); ?>" alt="" height="22">
            </span>
        </a>
    </div>

    <button type="button" class="btn btn-sm px-3 header-item vertical-menu-btn topnav-hamburger">
        <span class="hamburger-icon">
            <span></span>
            <span></span>
            <span></span>
        </span>
    </button>

    <div data-simplebar class="sidebar-menu-scroll">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li class="menu-title" data-key="t-menu"><?php echo app('translator')->get('translation.Menu'); ?></li>

                <li>
                    <a href="clientes">
                        <i class="icon nav-icon" data-eva="person-outline"></i>
                        <span class="menu-item" data-key="t-calendar"><?php echo app('translator')->get('translation.Client_menu'); ?></span>
                    </a>
                </li>

                <li>
                    <a href="javascript: void(0);">
                        <i class="icon nav-icon" data-eva="message-square-outline"></i>
                        <span class="menu-item" data-key="t-dashboards"><?php echo app('translator')->get('translation.Multilingual'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="archivos" data-key="t-ecommerce"><?php echo app('translator')->get('translation.TransFile'); ?></a></li>
                        <li><a href="idiomas" data-key="t-ecommerce"><?php echo app('translator')->get('translation.Languages'); ?></a></li>
                        <li><a href="traducciones" data-key="t-saas"><?php echo app('translator')->get('translation.Translations'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);">
                        <i class="icon nav-icon" data-eva="grid-outline"></i>
                        <span class="menu-item" data-key="t-dashboards"><?php echo app('translator')->get('translation.Dashboards'); ?></span>
                        <span class="badge rounded-pill bg-primary">3</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="index" data-key="t-ecommerce"><?php echo app('translator')->get('translation.Ecommerce'); ?></a></li>
                        <li><a href="dashboard-saas" data-key="t-saas"><?php echo app('translator')->get('translation.Saas'); ?></a></li>
                        <li><a href="dashboard-crypto" data-key="t-crypto"><?php echo app('translator')->get('translation.Crypto'); ?></a></li>
                    </ul>
                </li>

                <li class="menu-title" data-key="t-applications"><?php echo app('translator')->get('translation.Applications'); ?></li>

                <li>
                    <a href="apps-calendar">
                        <i class="icon nav-icon" data-eva="calendar-outline"></i>
                        <span class="menu-item" data-key="t-calendar"><?php echo app('translator')->get('translation.Calendars'); ?></span>
                    </a>
                </li>

                <li>
                    <a href="apps-chat">
                        <i class="icon nav-icon" data-eva="message-circle-outline"></i>
                        <span class="menu-item" data-key="t-chat"><?php echo app('translator')->get('translation.Chat'); ?></span>
                        <span class="badge rounded-pill badge-soft-danger" data-key="t-hot">Hot</span>
                    </a>
                </li>

                <li>
                    <a href="apps-file-manager">
                        <i class="icon nav-icon" data-eva="archive-outline"></i>
                        <span class="menu-item" data-key="t-filemanager"><?php echo app('translator')->get('translation.File_Manager'); ?></span>
                    </a>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="shopping-bag-outline"></i>
                        <span class="menu-item" data-key="t-ecommerce"><?php echo app('translator')->get('translation.Ecommerce'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="ecommerce-products" data-key="t-products"><?php echo app('translator')->get('translation.Products'); ?></a></li>
                        <li><a href="ecommerce-product-detail" data-key="t-product-detail"><?php echo app('translator')->get('translation.Product_Detail'); ?></a></li>
                        <li><a href="ecommerce-orders" data-key="t-orders"><?php echo app('translator')->get('translation.Orders'); ?></a></li>
                        <li><a href="ecommerce-customers" data-key="t-customers"><?php echo app('translator')->get('translation.Customers'); ?></a></li>
                        <li><a href="ecommerce-cart" data-key="t-cart"><?php echo app('translator')->get('translation.Cart'); ?></a></li>
                        <li><a href="ecommerce-checkout" data-key="t-checkout"><?php echo app('translator')->get('translation.Checkout'); ?></a></li>
                        <li><a href="ecommerce-shops" data-key="t-shops"><?php echo app('translator')->get('translation.Shops'); ?></a></li>
                        <li><a href="ecommerce-add-product" data-key="t-add-product"><?php echo app('translator')->get('translation.Add_Product'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="email-outline"></i>
                        <span class="menu-item" data-key="t-email"><?php echo app('translator')->get('translation.Email'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="email-inbox" data-key="t-inbox"><?php echo app('translator')->get('translation.Inbox'); ?></a></li>
                        <li><a href="email-read" data-key="t-read-email"><?php echo app('translator')->get('translation.Read_Email'); ?></a></li>
                        <li>
                            <a href="javascript: void(0);">
                                <span data-key="t-email-templates"><?php echo app('translator')->get('translation.Templates'); ?></span>
                                <span class="badge rounded-pill badge-soft-success" data-key="t-new"><?php echo app('translator')->get('translation.New'); ?></span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">
                                <li><a href="email-template-basic" data-key="t-basic-action"><?php echo app('translator')->get('translation.Basic_Action'); ?></a></li>
                                <li><a href="email-template-alert" data-key="t-alert-email"><?php echo app('translator')->get('translation.Alert_Email'); ?></a></li>
                                <li><a href="email-template-billing" data-key="t-bill-email"><?php echo app('translator')->get('translation.Billing_Email'); ?></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="book-outline"></i>
                        <span class="menu-item" data-key="t-invoices"><?php echo app('translator')->get('translation.Invoices'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="invoices-list" data-key="t-invoice-list"><?php echo app('translator')->get('translation.Invoice_List'); ?></a></li>
                        <li><a href="invoices-detail" data-key="t-invoice-detail"><?php echo app('translator')->get('translation.Invoice_Detail'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="briefcase-outline"></i>
                        <span class="menu-item" data-key="t-projects"><?php echo app('translator')->get('translation.Projects'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="projects-grid" data-key="t-p-grid"><?php echo app('translator')->get('translation.Projects_Grid'); ?></a></li>
                        <li><a href="projects-list" data-key="t-p-list"><?php echo app('translator')->get('translation.Projects_List'); ?></a></li>
                        <li><a href="projects-create" data-key="t-create-new"><?php echo app('translator')->get('translation.Create_New'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="wifi-outline"></i>
                        <span class="menu-item" data-key="t-contacts"><?php echo app('translator')->get('translation.Contacts'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="contacts-grid" data-key="t-user-grid"><?php echo app('translator')->get('translation.User_Grid'); ?></a></li>
                        <li><a href="contacts-list" data-key="t-user-list"><?php echo app('translator')->get('translation.User_List'); ?></a></li>
                        <li><a href="contacts-profile" data-key="t-user-profile"><?php echo app('translator')->get('translation.Profile'); ?></a></li>
                    </ul>
                </li>

                <li class="menu-title" data-key="t-layouts"><?php echo app('translator')->get('translation.Layouts'); ?></li>

                <li>
                    <a href="layouts-horizontal">
                        <i class="icon nav-icon" data-eva="browser-outline"></i>
                        <span class="menu-item" data-key="t-horizontal"><?php echo app('translator')->get('translation.Horizontal'); ?></span>
                    </a>
                </li>

                <li class="menu-title" data-key="t-pages"><?php echo app('translator')->get('translation.Pages'); ?></li>

                <li>
                    <a href="javascript: void(0);">
                        <i class="icon nav-icon" data-eva="person-done-outline"></i>
                        <span class="menu-item" data-key="t-authentication"><?php echo app('translator')->get('translation.Authentication'); ?></span>
                        <span class="badge rounded-pill bg-info">8</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="auth-login" data-key="t-login"><?php echo app('translator')->get('translation.Login'); ?></a></li>
                        <li><a href="auth-register" data-key="t-register"><?php echo app('translator')->get('translation.Register'); ?></a></li>
                        <li><a href="auth-recoverpw" data-key="t-recover-password"><?php echo app('translator')->get('translation.Recover_Password'); ?></a></li>
                        <li><a href="auth-lock-screen" data-key="t-lock-screen"><?php echo app('translator')->get('translation.Lock_Screen'); ?></a></li>
                        <li><a href="auth-logout" data-key="t-logout"><?php echo app('translator')->get('translation.Logout'); ?></a></li>
                        <li><a href="auth-confirm-mail" data-key="t-confirm-mail"><?php echo app('translator')->get('translation.Confirm_Mail'); ?></a></li>
                        <li><a href="auth-email-verification" data-key="t-email-verification"><?php echo app('translator')->get('translation.Email_verification'); ?></a></li>
                        <li><a href="auth-two-step-verification" data-key="t-two-step-verification"><?php echo app('translator')->get('translation.Two_step_verification'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="cube-outline"></i>
                        <span class="menu-item" data-key="t-utility"><?php echo app('translator')->get('translation.Utility'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="pages-starter" data-key="t-starter-page"><?php echo app('translator')->get('translation.Starter_Page'); ?></a></li>
                        <li><a href="pages-maintenance" data-key="t-maintenance"><?php echo app('translator')->get('translation.Maintenance'); ?></a></li>
                        <li><a href="pages-comingsoon" data-key="t-coming-soon"><?php echo app('translator')->get('translation.Coming_Soon'); ?></a></li>
                        <li><a href="pages-timeline" data-key="t-timeline"><?php echo app('translator')->get('translation.Timeline'); ?></a></li>
                        <li><a href="pages-faqs" data-key="t-faqs"><?php echo app('translator')->get('translation.FAQs'); ?></a></li>
                        <li><a href="pages-pricing" data-key="t-pricing"><?php echo app('translator')->get('translation.Pricing'); ?></a></li>
                        <li><a href="pages-404" data-key="t-error-404"><?php echo app('translator')->get('translation.Error_404'); ?></a></li>
                        <li><a href="pages-500" data-key="t-error-500"><?php echo app('translator')->get('translation.Error_500'); ?></a></li>
                    </ul>
                </li>

                <li class="menu-title" data-key="t-components"><?php echo app('translator')->get('translation.Components'); ?></li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="layers-outline"></i>
                        <span class="menu-item" data-key="t-ui-elements"><?php echo app('translator')->get('translation.UI_Elements'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="ui-alerts" data-key="t-alerts"><?php echo app('translator')->get('translation.Alerts'); ?></a></li>
                        <li><a href="ui-buttons" data-key="t-buttons"><?php echo app('translator')->get('translation.Buttons'); ?></a></li>
                        <li><a href="ui-cards" data-key="t-cards"><?php echo app('translator')->get('translation.Cards'); ?></a></li>
                        <li><a href="ui-carousel" data-key="t-carousel"><?php echo app('translator')->get('translation.Carousel'); ?></a></li>
                        <li><a href="ui-dropdowns" data-key="t-dropdowns"><?php echo app('translator')->get('translation.Dropdowns'); ?></a></li>
                        <li><a href="ui-grid" data-key="t-grid"><?php echo app('translator')->get('translation.Grid'); ?></a></li>
                        <li><a href="ui-images" data-key="t-images"><?php echo app('translator')->get('translation.Images'); ?></a></li>
                        <li><a href="ui-lightbox" data-key="t-lightbox"><?php echo app('translator')->get('translation.Lightbox'); ?></a></li>
                        <li><a href="ui-modals" data-key="t-modals"><?php echo app('translator')->get('translation.Modals'); ?></a></li>
                        <li><a href="ui-offcanvas" data-key="t-offcanvas"><?php echo app('translator')->get('translation.Offcanvas'); ?></a></li>
                        <li><a href="ui-rangeslider" data-key="t-range-slider"><?php echo app('translator')->get('translation.Range_Slider'); ?></a></li>
                        <li><a href="ui-progressbars" data-key="t-progress-bars"><?php echo app('translator')->get('translation.Progress_Bars'); ?></a></li>
                        <li><a href="ui-sweet-alert" data-key="t-sweet-alert"><?php echo app('translator')->get('translation.Sweet_Alert'); ?>2</a></li>
                        <li><a href="ui-tabs-accordions" data-key="t-tabs-accordions"><?php echo app('translator')->get('translation.Tabs_&_Accordions'); ?></a></li>
                        <li><a href="ui-typography" data-key="t-typography"><?php echo app('translator')->get('translation.Typography'); ?></a></li>
                        <li><a href="ui-video" data-key="t-video"><?php echo app('translator')->get('translation.Video'); ?></a></li>
                        <li><a href="ui-general" data-key="t-general"><?php echo app('translator')->get('translation.General'); ?></a></li>
                        <li><a href="ui-colors" data-key="t-colors"><?php echo app('translator')->get('translation.Colors'); ?></a></li>
                        <li><a href="ui-rating" data-key="t-rating"><?php echo app('translator')->get('translation.Rating'); ?></a></li>
                        <li><a href="ui-notifications" data-key="t-notifications"><?php echo app('translator')->get('translation.Notifications'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="edit-2-outline"></i>
                        <span class="menu-item" data-key="t-forms"><?php echo app('translator')->get('translation.Forms'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="form-elements" data-key="t-form-elements"><?php echo app('translator')->get('translation.Form_Elements'); ?></a></li>
                        <li><a href="form-layouts" data-key="t-form-layouts"><?php echo app('translator')->get('translation.Form_Layouts'); ?></a></li>
                        <li><a href="form-validation" data-key="t-form-validation"><?php echo app('translator')->get('translation.Form_Validation'); ?></a></li>
                        <li><a href="form-advanced" data-key="t-form-advanced"><?php echo app('translator')->get('translation.Form_Advanced'); ?></a></li>
                        <li><a href="form-editors" data-key="t-form-editors"><?php echo app('translator')->get('translation.Form_Editors'); ?></a></li>
                        <li><a href="form-uploads" data-key="t-form-upload"><?php echo app('translator')->get('translation.Form_File_Upload'); ?></a></li>
                        <li><a href="form-wizard" data-key="t-form-wizard"><?php echo app('translator')->get('translation.Form_Wizard'); ?></a></li>
                        <li><a href="form-mask" data-key="t-form-mask"><?php echo app('translator')->get('translation.Form_Mask'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="list"></i>
                        <span class="menu-item" data-key="t-tables"><?php echo app('translator')->get('translation.Tables'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="tables-basic" data-key="t-basic-tables"><?php echo app('translator')->get('translation.Basic_Tables'); ?></a></li>
                        <li><a href="tables-advanced" data-key="t-advanced-tables"><?php echo app('translator')->get('translation.Advanced_Table'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="pie-chart-outline"></i>
                        <span class="menu-item" data-key="t-charts"><?php echo app('translator')->get('translation.Charts'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="javascript: void(0);" class="has-arrow" data-key="t-apex-charts"><?php echo app('translator')->get('translation.Apex_Charts'); ?></a>
                            <ul class="sub-menu" aria-expanded="true">
                                <li><a href="charts-line" data-key="t-line"><?php echo app('translator')->get('translation.Line'); ?></a></li>
                                <li><a href="charts-area" data-key="t-area"><?php echo app('translator')->get('translation.Area'); ?></a></li>
                                <li><a href="charts-column" data-key="t-column"><?php echo app('translator')->get('translation.Column'); ?></a></li>
                                <li><a href="charts-bar" data-key="t-bar"><?php echo app('translator')->get('translation.Bar'); ?></a></li>
                                <li><a href="charts-mixed" data-key="t-mixed"><?php echo app('translator')->get('translation.Mixed'); ?></a></li>
                                <li><a href="charts-timeline" data-key="t-timeline"><?php echo app('translator')->get('translation.Timeline'); ?></a></li>
                                <li><a href="charts-candlestick" data-key="t-candlestick"><?php echo app('translator')->get('translation.Candlestick'); ?></a></li>
                                <li><a href="charts-boxplot" data-key="t-boxplot"><?php echo app('translator')->get('translation.Boxplot'); ?></a></li>
                                <li><a href="charts-bubble" data-key="t-bubble"><?php echo app('translator')->get('translation.Bubble'); ?></a></li>
                                <li><a href="charts-scatter" data-key="t-scatter"><?php echo app('translator')->get('translation.Scatter'); ?></a></li>
                                <li><a href="charts-heatmap" data-key="t-heatmap"><?php echo app('translator')->get('translation.Heatmap'); ?></a></li>
                                <li><a href="charts-treemap" data-key="t-treemap"><?php echo app('translator')->get('translation.Treemap'); ?></a></li>
                                <li><a href="charts-pie" data-key="t-pie"><?php echo app('translator')->get('translation.Pie'); ?></a></li>
                                <li><a href="charts-radialbar" data-key="t-radialbar"><?php echo app('translator')->get('translation.Radialbar'); ?></a></li>
                                <li><a href="charts-radar" data-key="t-radar"><?php echo app('translator')->get('translation.Radar'); ?></a></li>
                                <li><a href="charts-polararea" data-key="t-polararea"><?php echo app('translator')->get('translation.Polararea'); ?></a></li>
                            </ul>
                        </li>
                        <li><a href="charts-echart" data-key="t-e-charts"><?php echo app('translator')->get('translation.E_Charts'); ?></a></li>
                        <li><a href="charts-chartjs" data-key="t-chartjs-charts"><?php echo app('translator')->get('translation.Chartjs_Charts'); ?></a></li>
                        <li><a href="charts-tui" data-key="t-ui-charts"><?php echo app('translator')->get('translation.Toast_UI_Charts'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="smiling-face-outline"></i>
                        <span class="menu-item" data-key="t-icons"><?php echo app('translator')->get('translation.Icons'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="icons-evaicons" data-key="t-evaicons"><?php echo app('translator')->get('translation.Eva_Icons'); ?></a></li>
                        <li><a href="icons-boxicons" data-key="t-boxicons"><?php echo app('translator')->get('translation.Boxicons'); ?></a></li>
                        <li><a href="icons-materialdesign" data-key="t-material-design"><?php echo app('translator')->get('translation.Material_Design'); ?></a></li>
                        <li><a href="icons-fontawesome" data-key="t-font-awesome"><?php echo app('translator')->get('translation.Font_awesome'); ?> 5</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="pin-outline"></i>
                        <span class="menu-item" data-key="t-maps"><?php echo app('translator')->get('translation.Maps'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                        <li><a href="maps-google" data-key="t-google"><?php echo app('translator')->get('translation.Google'); ?></a></li>
                        <li><a href="maps-vector" data-key="t-vector"><?php echo app('translator')->get('translation.Vector'); ?></a></li>
                        <li><a href="maps-leaflet" data-key="t-leaflet"><?php echo app('translator')->get('translation.Leaflet'); ?></a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow">
                        <i class="icon nav-icon" data-eva="share-outline"></i>
                        <span class="menu-item" data-key="t-multi-level"><?php echo app('translator')->get('translation.Multi_Level'); ?></span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href="javascript: void(0);" data-key="t-level-1.1"><?php echo app('translator')->get('translation.Level_1.1'); ?></a></li>
                        <li><a href="javascript: void(0);" class="has-arrow" data-key="t-level-1.2"><?php echo app('translator')->get('translation.Level_1.2'); ?></a>
                            <ul class="sub-menu" aria-expanded="true">
                                <li><a href="javascript: void(0);" data-key="t-level-2.1"><?php echo app('translator')->get('translation.Level_2.1'); ?></a></li>
                                <li><a href="javascript: void(0);" data-key="t-level-2.2"><?php echo app('translator')->get('translation.Level_2.2'); ?></a></li>
                            </ul>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
        <!-- Sidebar -->

        <div class="p-3 px-4 sidebar-footer">
            <p class="mb-1 main-title"><script>document.write(new Date().getFullYear())</script> &copy; Borex.</p>
            <p class="mb-0">Design & Develop by Themesbrand</p>
        </div>
    </div>
</div>
<!-- Left Sidebar End -->
<?php /**PATH D:\proyectos-laravel\borex\resources\views/layouts/sidebar.blade.php ENDPATH**/ ?>