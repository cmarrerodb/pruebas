<?php $__env->startSection('title'); ?> <?php echo app('translator')->get('translation.Carousel'); ?> <?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>


<?php $__env->startSection('pagetitle'); ?>Carousel <?php $__env->stopSection(); ?>



    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Slides only</h4>
                </div>
                <div class="card-body">
                    <p class="card-title-desc">Here’s a carousel with slides only.
                        Note the presence of the <code>.d-block</code>
                        and <code>.img-fluid</code> on carousel images
                        to prevent browser default image alignment.</p>

                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel"
                        data-bs-interval="3000">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-1.jpg')); ?>" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-2.jpg')); ?>" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-3.jpg')); ?>" alt="Third slide">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- end col -->

        <div class="col-xl-6">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">With controls</h4>
                </div>
                <div class="card-body">
                    <p class="card-title-desc">Adding in the previous and next controls:</p>

                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-4.jpg')); ?>" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-5.jpg')); ?>" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-6.jpg')); ?>" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->


    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">With indicators</h4>
                </div>
                <div class="card-body">
                    <p class="card-title-desc">You can also add the indicators to the
                        carousel, alongside the controls, too.</p>

                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active">
                            </li>
                            <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
                            <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-3.jpg')); ?>" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-2.jpg')); ?>" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-1.jpg')); ?>" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div> <!-- end col -->

        <div class="col-xl-6">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">With captions</h4>
                </div>
                <div class="card-body">
                    <p class="card-title-desc">Add captions to your slides easily with the <code>.carousel-caption</code>
                        element within any <code>.carousel-item</code>.</p>

                    <div id="carouselExampleCaption" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img src="<?php echo e(URL::asset('assets/images/small/img-7.jpg')); ?>" alt="..." class="d-block img-fluid">
                                <div class="carousel-caption d-none d-md-block text-white-50">
                                    <h5 class="text-white">First slide label</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="<?php echo e(URL::asset('assets/images/small/img-5.jpg')); ?>" alt="..." class="d-block img-fluid">
                                <div class="carousel-caption d-none d-md-block text-white-50">
                                    <h5 class="text-white">Second slide label</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="<?php echo e(URL::asset('assets/images/small/img-4.jpg')); ?>" alt="..." class="d-block img-fluid">
                                <div class="carousel-caption d-none d-md-block text-white-50">
                                    <h5 class="text-white">Third slide label</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaption" role="button" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaption" role="button" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->

    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Crossfade</h4>
                </div>
                <div class="card-body">
                    <p class="card-title-desc">Add <code>.carousel-fade</code> to your carousel to animate slides with a
                        fade transition instead of a slide.</p>
                    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-bs-target="#carouselExampleFade" data-bs-slide-to="0" class="active"></li>
                            <li data-bs-target="#carouselExampleFade" data-bs-slide-to="1"></li>
                            <li data-bs-target="#carouselExampleFade" data-bs-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-1.jpg')); ?>" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-2.jpg')); ?>" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo e(URL::asset('assets/images/small/img-3.jpg')); ?>" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(URL::asset('/assets/js/app.min.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\proyectos-laravel\borex\resources\views/ui-carousel.blade.php ENDPATH**/ ?>