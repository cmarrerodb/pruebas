@extends('layouts.master')
@section('title') @lang('translation.Cart') @endsection
@section('content')


@section('pagetitle')Cart @endsection


    <div class="row">
        <div class="col-xl-8">
            <div class="card border shadow-none">
                <div class="card-body">

                    <div class="d-flex align-items-start border-bottom pb-3">
                        <div class="me-4">
                            <img src="{{ URL::asset('./assets/images/product/img-1.jpg') }}" alt="" class="avatar-lg rounded">
                        </div>
                        <div class="flex-grow-1 align-self-center overflow-hidden">
                            <div>
                                <h5 class="text-truncate font-size-18"><a href="ecommerce-product-detail"
                                        class="text-dark">Waterproof Mobile Phone </a></h5>
                                <p class="text-muted mb-0">
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star-half text-warning"></i>
                                </p>
                                <p class="mb-0 mt-1">Color : <span class="fw-medium">Gray</span></p>
                            </div>
                        </div>
                        <div class="flex-shrink-0 ms-2">
                            <ul class="list-inline mb-0 font-size-16">
                                <li class="list-inline-item">
                                    <a href="#" class="text-muted px-1">
                                        <i class="mdi mdi-trash-can-outline"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" class="text-muted px-1">
                                        <i class="mdi mdi-heart-outline"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Price</p>
                                    <h5 class="mb-0 mt-2"><span class="text-muted me-2"><del
                                                class="font-size-16 fw-normal">$500</del></span>$450</h5>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Quantity</p>
                                    <div class="d-inline-flex">
                                        <select class="form-select form-select-sm w-xl">
                                            <option value="1">1</option>
                                            <option value="2" selected>2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Total</p>
                                    <h5>$900</h5>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- end card -->

            <div class="card border shadow-none">
                <div class="card-body">

                    <div class="d-flex align-items-start border-bottom pb-3">
                        <div class="me-4">
                            <img src="{{ URL::asset('./assets/images/product/img-2.jpg') }}" alt="" class="avatar-lg rounded">
                        </div>
                        <div class="flex-grow-1 align-self-center overflow-hidden">
                            <div>
                                <h5 class="text-truncate font-size-18"><a href="ecommerce-product-detail"
                                        class="text-dark">Smartphone Dual Camera </a></h5>
                                <p class="text-muted mb-0">
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star text-warning"></i>
                                </p>
                                <p class="mb-0 mt-1">Color : <span class="fw-medium">Green</span></p>
                            </div>
                        </div>
                        <div class="flex-shrink-0 ms-2">
                            <ul class="list-inline mb-0 font-size-16">
                                <li class="list-inline-item">
                                    <a href="#" class="text-muted px-1">
                                        <i class="mdi mdi-trash-can-outline"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" class="text-muted px-1">
                                        <i class="mdi mdi-heart-outline"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Price</p>
                                    <h5 class="mb-0 mt-2"><span class="text-muted me-2"><del
                                                class="font-size-16 fw-normal">$280</del></span>$240</h5>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Quantity</p>
                                    <div class="d-inline-flex">
                                        <select class="form-select form-select-sm w-xl">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3" selected>3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Total</p>
                                    <h5>$720</h5>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- end card -->

            <div class="card border shadow-none">
                <div class="card-body">

                    <div class="d-flex align-items-start border-bottom pb-3">
                        <div class="me-4">
                            <img src="{{ URL::asset('./assets/images/product/img-3.jpg') }}" alt="" class="avatar-lg rounded">
                        </div>
                        <div class="flex-grow-1 align-self-center overflow-hidden">
                            <div>
                                <h5 class="text-truncate font-size-18"><a href="ecommerce-product-detail"
                                        class="text-dark">Black Colour Smartphone </a></h5>
                                <p class="text-muted mb-0">
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star text-warning"></i>
                                    <i class="bx bxs-star text-warning"></i>
                                </p>
                                <p class="mb-0 mt-1">Color : <span class="fw-medium">Blue</span></p>
                            </div>
                        </div>
                        <div class="flex-shrink-0 ms-2">
                            <ul class="list-inline mb-0 font-size-16">
                                <li class="list-inline-item">
                                    <a href="#" class="text-muted px-1">
                                        <i class="mdi mdi-trash-can-outline"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" class="text-muted px-1">
                                        <i class="mdi mdi-heart-outline"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Price</p>
                                    <h5 class="mb-0 mt-2"><span class="text-muted me-2"><del
                                                class="font-size-16 fw-normal">$750</del></span>$950</h5>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Quantity</p>
                                    <div class="d-inline-flex">
                                        <select class="form-select form-select-sm w-xl">
                                            <option value="1" selected>1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="mt-3">
                                    <p class="text-muted mb-2">Total</p>
                                    <h5>$950</h5>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- end card -->

            <div class="row my-4">
                <div class="col-sm-6">
                    <a href="ecommerce-products" class="btn btn-link text-muted">
                        <i class="mdi mdi-arrow-left me-1"></i> Continue Shopping </a>
                </div> <!-- end col -->
                <div class="col-sm-6">
                    <div class="text-sm-end mt-2 mt-sm-0">
                        <a href="ecommerce-checkout" class="btn btn-success">
                            <i class="mdi mdi-cart-outline me-1"></i> Checkout </a>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row-->
        </div>

        <div class="col-xl-4">
            <div class="mt-5 mt-lg-0">
                <div class="card border shadow-none">
                    <div class="card-header bg-transparent border-bottom py-3 px-4">
                        <h5 class="font-size-16 mb-0">Order Summary <span class="float-end">#MN0124</span></h5>
                    </div>
                    <div class="card-body p-4 pt-2">

                        <div class="table-responsive">
                            <table class="table mb-0">
                                <tbody>
                                    <tr>
                                        <td>Sub Total :</td>
                                        <td class="text-end">$ 780</td>
                                    </tr>
                                    <tr>
                                        <td>Discount : </td>
                                        <td class="text-end">- $ 78</td>
                                    </tr>
                                    <tr>
                                        <td>Shipping Charge :</td>
                                        <td class="text-end">$ 25</td>
                                    </tr>
                                    <tr>
                                        <td>Estimated Tax : </td>
                                        <td class="text-end">$ 18.20</td>
                                    </tr>
                                    <tr class="bg-light">
                                        <th>Total :</th>
                                        <td class="text-end">
                                            <span class="fw-bold">
                                                $ 745.2
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- end table-responsive -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
@endsection
@section('script')
    <script src="{{ URL::asset('/assets/js/app.min.js') }}"></script>
@endsection
