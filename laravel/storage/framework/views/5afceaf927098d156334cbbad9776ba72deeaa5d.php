<link rel="stylesheet" href="<?php echo e(url('assets/css/materializes.css')); ?>">


<?php $__env->startSection('isi'); ?>
        <div class="container text-center">
            <h1>UPDATE DAILY</h1>
        </div>
        <!--Page -->
        <div class="page-info">
            <div class="container">
                    <ul>
                        <li style="font-size: 20; color: black"><strong>About Editing or Updating Employee Daily</strong></li>
                    </ul>
            </div>
        </div>
        <!--End Page-->
    </div><!-- end section -->

    <?php echo $__env->make('admin.awan.gaya_awan', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>

    <div class="container z-depth-3" style="min-height: 300px">
    </br>

    <?php if(\Session::has('alert')): ?>
	   <div class="alert alert-danger">
	   		<strong><?php echo e(Session::get('alert')); ?></strong>
	   </div>
    <?php elseif(\Session::has('success_alert')): ?>
    <div class="alert alert-success">
   		<strong><?php echo e(Session::get('success_alert')); ?></strong>
    </div>
    <?php endif; ?>

<form method="post" action="<?php echo e(url('/savedaily')); ?>/<?php echo e($edit); ?>">
<?php echo e(csrf_field()); ?>

    <table>
        <thead>
            <tr>
                <td><input type="hidden" name="id" maxlength="13" value="<?php echo e($view->id); ?>" readonly style="font-size: 16px"/></td>
            </tr>
            <tr>
                <td width="200px">Name</td>
                <td>:</td>
                <td><input type="text" name="nama" maxlength="13" value="<?php echo e($view->nama); ?>" readonly style="font-size: 16px"/></td>
            </tr>
            <tr>
				        <td>Check In</td>
				        <td>:</td>
				        <td><input type="text" name="cin" maxlength="35" value="<?php echo e($view->intime); ?>" style="font-size: 16px"/></td>
			      </tr>
            <tr>
                <td>Location In</td>
                <td>:</td>
                <td><input type="text" name="locin" maxlength="35" value="<?php echo e($view->locin); ?>" style="font-size: 16px"/></td>
            </tr>
            <tr>
                <td>Check Out</td>
                <td>:</td>
                <td><input type="text" name="cout" maxlength="35" value="<?php echo e($view->outtime); ?>" style="font-size: 16px"/></td>
            </tr>
            <tr>
                <td>Location Out</td>
                <td>:</td>
                <td><input type="text" name="locout" maxlength="35" value="<?php echo e($view->locout); ?>" style="font-size: 16px"/></td>
            </tr>
			      <tr>
				        <td colspan="3" align="center" style="padding-top: 15px"><button type="submit" class="btn btn-success btn-block" name="update" style="background-color: #000051; font-size: 20px"/>UPDATE</button>
                </td>
			      </tr>
            <tr>
				        <td colspan="3" align="center" style="padding-top: 15px">
                <a href="<?php echo e(url('/delete_daily')); ?>/<?php echo e($view->id); ?>/<?php echo e($edit); ?>"
                <button class="btn btn-success btn-block" name="update" style="background-color: #e60000; font-size: 20px"/>DELETE</button>
                </a>
                </td>
			      </tr>
		</thead>
	</table>
	</br>
	</div>

</form>
</br>
</div>
</br>
</br>
</br>

<script type="text/javascript" src="<?php echo e(url('assets/js/materialize.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(url('assets/js/materialize.min.js')); ?>"></script>
<script>
	$(document).ready(function(){
		$('select').material_select();
	});
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('template', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>