<?php $__env->startSection('title'); ?> <?php echo app('translator')->get('translation.Lightbox'); ?> <?php $__env->stopSection(); ?>
<?php $__env->startSection('css'); ?>
<link rel="stylesheet" href="<?php echo e(URL::asset('assets/libs/glightbox/glightbox.min.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>


<?php $__env->startSection('pagetitle'); ?>Lightbox <?php $__env->stopSection(); ?>


    <div class="row">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title"> Lightbox gallery</h4>
                </div>
                <div class="card-body">
                    <p class="card-title-desc mb-0">In this example lazy-loading of images is enabled for
                        the next image based on move direction.</p>
                    <div class="popup-gallery">
                        <div class="row">
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="mt-4">
                                    <a href="<?php echo e(URL::asset('assets/images/small/img-1.jpg')); ?>" class="thumb preview-thumb image-popup">
                                        <div class="img-fluid">
                                            <img src="<?php echo e(URL::asset('assets/images/small/img-1.jpg')); ?>" alt="" class="img-fluid d-block">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="mt-4">
                                    <a href="<?php echo e(URL::asset('assets/images/small/img-2.jpg')); ?>" class="thumb preview-thumb image-popup">
                                        <div class="img-fluid">
                                            <img src="<?php echo e(URL::asset('assets/images/small/img-2.jpg')); ?>" alt="" class="img-fluid d-block">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="mt-4">
                                    <a href="<?php echo e(URL::asset('assets/images/small/img-3.jpg')); ?>" class="thumb preview-thumb image-popup">
                                        <div class="img-fluid">
                                            <img src="<?php echo e(URL::asset('assets/images/small/img-3.jpg')); ?>" alt="" class="img-fluid d-block">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="mt-4">
                                    <a href="<?php echo e(URL::asset('assets/images/small/img-4.jpg')); ?>" class="thumb preview-thumb image-popup">
                                        <div class="img-fluid">
                                            <img src="<?php echo e(URL::asset('assets/images/small/img-4.jpg')); ?>" alt="" class="img-fluid d-block">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="mt-4">
                                    <a href="<?php echo e(URL::asset('assets/images/small/img-5.jpg')); ?>" class="thumb preview-thumb image-popup">
                                        <div class="img-fluid">
                                            <img src="<?php echo e(URL::asset('assets/images/small/img-5.jpg')); ?>" alt="" class="img-fluid d-block">
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-4 col-6">
                                <div class="mt-4">
                                    <a href="<?php echo e(URL::asset('assets/images/small/img-6.jpg')); ?>" class="thumb preview-thumb image-popup">
                                        <div class="img-fluid">
                                            <img src="<?php echo e(URL::asset('assets/images/small/img-6.jpg')); ?>" alt="" class="img-fluid d-block">
                                        </div>
                                    </a>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->


    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title"> Images with Description</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="">
                                <a href="<?php echo e(URL::asset('assets/images/small/img-4.jpg')); ?>" class="thumb preview-thumb image-popup-desc"
                                    data-title="Project 01"
                                    data-description="Lorem ipsum dolor sit amet, consectetuer adipiscing elit">
                                    <img src="<?php echo e(URL::asset('assets/images/small/img-4.jpg')); ?>" class="img-fluid" alt="work-thumbnail">
                                </a>
                            </div>
                        </div><!-- end col -->

                        <div class="col-lg-3 col-sm-6">
                            <div class="mt-4 mt-md-0">
                                <a href="<?php echo e(URL::asset('assets/images/small/img-5.jpg')); ?>" class="thumb preview-thumb image-popup-desc"
                                    data-title="Project 02"
                                    data-description="Lorem ipsum dolor sit amet, consectetuer adipiscing elit">
                                    <img src="<?php echo e(URL::asset('assets/images/small/img-5.jpg')); ?>" class="img-fluid" alt="work-thumbnail">
                                </a>
                            </div>
                        </div><!-- end col -->

                        <div class="col-lg-3 col-sm-6">
                            <div class="mt-4 mt-lg-0">
                                <a href="<?php echo e(URL::asset('assets/images/small/img-1.jpg')); ?>" class="thumb preview-thumb image-popup-desc"
                                    data-title="Project 03"
                                    data-description="Lorem ipsum dolor sit amet, consectetuer adipiscing elit">
                                    <img src="<?php echo e(URL::asset('assets/images/small/img-1.jpg')); ?>" class="img-fluid" alt="work-thumbnail">
                                </a>
                            </div>
                        </div><!-- end col -->
                    </div><!-- end row -->
                </div>
            </div>
        </div>

        <div class="col-xl-6">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Popup with Video or Map</h4>
                </div>
                <div class="card-body">
                    <p class="card-title-desc">In this example lazy-loading of images is enabled for the
                        next image based on move direction. </p>
                    <div class="row">
                        <div class="col-12">
                            <div class="button-items">
                                <a class="image-popup-video-map btn btn-light mo-mb-2"
                                    href="https://www.youtube.com/watch?v=0O2aH4XLbto">Open YouTube Video</a>
                                <a class="image-popup-video-map btn btn-light mo-mb-2"
                                    href="https://vimeo.com/45830194">Open Vimeo Video</a>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(URL::asset('assets/libs/glightbox/glightbox.min.js')); ?>"></script>
    <script src="<?php echo e(URL::asset('assets/js/pages/lightbox.init.js')); ?>"></script>
    <script src="<?php echo e(URL::asset('assets/js/app.min.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\proyectos-laravel\borex\resources\views/ui-lightbox.blade.php ENDPATH**/ ?>