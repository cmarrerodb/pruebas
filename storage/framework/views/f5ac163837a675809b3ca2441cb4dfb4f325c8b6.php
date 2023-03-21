<?php $__env->startSection('title'); ?> <?php echo app('translator')->get('translation.Translation_admin'); ?> <?php $__env->stopSection(); ?>
<?php $__env->startSection('css'); ?>
    <link href="<?php echo e(URL::asset('assets/libs/sweetalert2/sweetalert2.min.css')); ?>" rel="stylesheet">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <meta name="_token" content="<?php echo e(csrf_token()); ?>">
    <style>
        .uper {
            margin-top: 40px;
        }
    </style>
    <div class="uper">
        <?php if(session()->get('success')): ?>
            <div class="alert alert-success">
                <?php if($message = Session::get('success')): ?>
                    <div class="alert alert-success">
                        <?php if($message == 'created'): ?>
                            <?php echo app('translator')->get('translation.Translation_created'); ?>
                        <?php elseif($message == 'updated'): ?>
                            <?php echo app('translator')->get('translation.Translation_updated'); ?>
                        <?php elseif($message == 'deleted'): ?>
                            <?php echo app('translator')->get('translation.Translation_deleted'); ?>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>
            </div>
            <br/>
        <?php endif; ?>
        <div class="card card-header">
            <?php echo app('translator')->get('translation.Translation_admin'); ?>
        </div>
        <div class="d-grid gap-2 d-md-block">
            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#translationModal"><i class="mdi mdi-plus me-1"></i><?php echo app('translator')->get('translation.Translation_add'); ?></button>
            <button id="generar" type="button" class="btn btn-dark btn-block" ><i class="mdi mdi-comment-flash me-1"></i><?php echo app('translator')->get('translation.Translation_generate'); ?></button>
        </div>
        <div>
            <form method="post" enctype="multipart/form-data" action = "<?php echo e(url('/importar_excel')); ?>">
                <?php echo csrf_field(); ?>
                <label><?php echo app('translator')->get('translation.Select_import'); ?></label>
                <input type="file" name="select_file" />
                <button type="submit" class="btn btn-primary" name="upload" title="<?php echo app('translator')->get('translation.TransFile_upload'); ?>"><i class="fas fa-upload"></i></button>
            </form>
            <?php if(count($errors) > 0): ?>
                <div class="alert alert-danger">
                    Error de validación de archivo<br/><br/>
                    <ul>
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li><?php echo e($error); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>

                </div>
            <?php endif; ?>
            <?php if($message = Session::get('success')): ?>
                <div class="alert alert-success alert-block">
                    <strong><?php echo e($message); ?></strong>
                </div>
            <?php endif; ?>
        </div>
        <div class="table-responsive mt-4">
            <table class="table table-dark table-striped table-hover" id="tbl_traducciones">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th><?php echo app('translator')->get('translation.Language_full'); ?></th>
                        <th><?php echo app('translator')->get('translation.Translation_file'); ?></th>
                        <th><?php echo app('translator')->get('translation.Translation_expression'); ?></th>
                        <th><?php echo app('translator')->get('translation.Translation_traduction'); ?></th>
                        <th><?php echo app('translator')->get('translation.Language_act'); ?></th>
                        <th><?php echo app('translator')->get('translation.Actions'); ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $traducciones; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $traduccion): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($traduccion->id); ?></td>
                            <td><?php echo e($traduccion->idioma); ?></td>
                            <td><?php echo e($traduccion->archivo); ?></td>
                            <td><?php echo e($traduccion->expresion); ?></td>
                            <td><?php echo e($traduccion->traduccion); ?></td>
                            <td><input type="checkbox" id ="activo_<?php echo e($traduccion->id); ?>" class="form-check-input" name="activo" <?php echo e($traduccion->activo==1?' checked ':''); ?>></td>
                            <td><button class="btn btn-primary btn-sm editar_traduccion" id="traduccion_<?php echo e($traduccion->id); ?>"><i class="fas fa-pencil"></i></button>
                            <button class="btn btn-danger btn-sm eliminar_traduccion" type="submit" id="eliminar_<?php echo e($traduccion->id); ?>"><i class="fas fa-trash"></i></button></td>
                        </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
        </div>
    </div>
    
    <div class="modal fade" id="translationModal" tabindex="-1" aria-labelledby="traduccionModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-xl modal-dialog-centered modal-fullscreen-sm-down">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="traduccionModalLabelAdd"><?php echo app('translator')->get('translation.Translation_add'); ?></h5>
                    <h5 class="modal-title" id="traduccionModalLabelEdit"><?php echo app('translator')->get('translation.Translation_edit'); ?></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="card-body">
                        <?php if($errors->any()): ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><?php echo e($error); ?></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div><br />
                        <?php endif; ?>
                    
                    <form id="frmTraduccion" method="post" action="<?php echo e(route('traducciones.store')); ?>">
                        <div class="form-group">
                            <?php echo csrf_field(); ?>
                            <label style="display:none;" id="idTraduccion">ID: <span id="id_traduccion"></span></label>
                        </div>
                        <div class="form-group">
                            <?php echo csrf_field(); ?>
                            <label for="country_name"><?php echo app('translator')->get('translation.Language_full'); ?><span class="req">*</span>:</label>
                            <select class="form-select" id="id_idioma" name="id_idioma"></select>
                        </div>
                        <div class="form-group">
                            <?php echo csrf_field(); ?>
                            <label for="country_name"><?php echo app('translator')->get('translation.TransFile_file'); ?><span class="req">*</span>:</label>
                            <select class="form-select" id="id_archivo" name="id_archivo"></select>
                        </div>
                        <div class="form-group">
                            <?php echo csrf_field(); ?>
                            <label for="country_name"><?php echo app('translator')->get('translation.Translation_expression'); ?><span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="expresion" required/>
                        </div>
                        <div class="form-group">
                            <?php echo csrf_field(); ?>
                            <label for="country_name"><?php echo app('translator')->get('translation.Translation_traduction'); ?><span class="req">*</span>:</label>
                            <input type="text" class="form-control" name="traduccion" required/>
                        </div>
                        <div class="form-group mb-4">
                            <label for="cases"><?php echo app('translator')->get('translation.Language_act'); ?>:</label>
                            <input type="checkbox" class="form-control form-check-input" name="activo" id="activo"/>
                        </div>
                        <button id="btn_edit"  style="display:none;" type="submit" class="btn btn-primary"><?php echo app('translator')->get('translation.Actions_update'); ?></button>
                        <button id="btn_add" type="submit" class="btn btn-primary"><?php echo app('translator')->get('translation.Actions_add'); ?></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
        var base = "<?php echo e(url('/')); ?>";
        var Confirm_delete_title = "<?php echo app('translator')->get('translation.Confirm_delete_title'); ?>";
        var Confirm_delete_text = "<?php echo app('translator')->get('translation.Confirm_delete_text'); ?>";
        var Confirm_delete_button = "<?php echo app('translator')->get('translation.Confirm_delete_button'); ?>";
        var Confirm_cancel_button = "<?php echo app('translator')->get('translation.Confirm_cancel_button'); ?>";
        var Show_confirm_deleted_title = "<?php echo app('translator')->get('translation.Show_confirm_deleted_title'); ?>";
        var Show_Confirm_deleted_text = "<?php echo app('translator')->get('translation.Show_Confirm_deleted_text'); ?>";
        var Translation_file_generated_title = "<?php echo app('translator')->get('translation.Translation_file_generated_title'); ?>";
        var Translation_file_generated_text = "<?php echo app('translator')->get('translation.Translation_file_generated_text'); ?>";

    </script>
    <script src="<?php echo e(URL::asset('/assets/js/app.min.js')); ?>"></script>
    <script src="<?php echo e(URL::asset('assets/libs/sweetalert2/sweetalert2.min.js')); ?>"></script>
    <script src="<?php echo e(URL::asset('/assets/js/pages/traducciones/traducciones.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\proyectos-laravel\borex\resources\views/traducciones/index.blade.php ENDPATH**/ ?>