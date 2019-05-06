<center>
<table>
    <tr>
        <td><h3>Hasil Record Tanggal <?php echo e($date1); ?> Sampai Dengan <?php echo e($date2); ?></h3></td>
    </tr>
</table>
<table border='1'>
					<thead>
						<tr>
							<th>No.</th>
							<th>NIP</th>
							<th>Name Employee</th>
							<th>Email Employee</th>
							<th>Position</th>
							<th>Date</th>
							<th>Check In</th>
							<th>Check Out</th>
						</tr>
					</thead>
					<tbody>
					<?php $no=1;?>
					<?php $__currentLoopData = $isitbl; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $isitbl): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<tr>
							<td><?php echo e($no); ?>.</td>
							<td><?php echo e($isitbl->nip); ?></td>
							<td><?php echo e($isitbl->nama); ?></td>
							<td><?php echo e($isitbl->email); ?></td>
							<td><?php echo e($isitbl->jabatan); ?></td>
							<td><?php echo e($isitbl->date); ?></td>
							<td><?php echo e($isitbl->intime); ?></td>
					 		<td><?php echo e($isitbl->outtime); ?></td>
						</tr>
					<?php $no++; ?>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

</table><br><br><br>
<table>
    <tr>
        <td><h3>Hasil Total Absent</h3></td>
    </tr>
</table>
<table border='1'>
					<thead>
						<tr>
							<th>No.</th>
							<th>NIP</th>
							<th>Name Employee</th>
							<th>Total Absent</th>
						</tr>
					</thead>
					<tbody>
					<?php $no=1;?>
                    <?php $__currentLoopData = $sum; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sum): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($no); ?></td>
                        <td><?php echo e($sum->nip); ?></td>
                        <td><?php echo e($sum->nama); ?></td>
                        <td><?php echo e($sum->total); ?></td>
                    </tr>
                    <?php $no++;?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
</table><br><br><br>

<table>
    <tr>
        <td><h3>Daftar Izin Karyawan Tanggal <?php echo e($date1); ?> Sampai Dengan <?php echo e($date2); ?></h3></td>
    </tr>
</table>

<table border='1'>
					<thead>
						<tr>
							<th>No.</th>
							<th>NIP</th>
                            <th>Nama</th>
							<th>Date</th>
							<th>Type</th>
							<th>Reason</th>
						</tr>
					</thead>
					<tbody>
					<?php $no=1;?>
					<?php $__currentLoopData = $leave; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $leave): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<tr>
							<td><?php echo e($no); ?>.</td>
							<td><?php echo e($leave->nip); ?></td>
                            <td><?php echo e($leave->nama); ?></td>
                            <td><?php echo e($leave->date); ?></td>
                            <td><?php echo e($leave->type); ?></td>
                            <td><?php echo e($leave->reason); ?></td>
						</tr>
					<?php $no++; ?>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</table><br><br><br>

<table>
    <tr>
        <td><h3>Hasil Total Izin Karyawan</h3></td>
    </tr>
</table>
<table border='1'>
					<thead>
						<tr>
							<th>No.</th>
							<th>NIP</th>
							<th>Name Employee</th>
							<th>Total Absent</th>
						</tr>
					</thead>
					<tbody>
					<?php $no=1;?>
                    <?php $__currentLoopData = $sum2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sum2): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($no); ?></td>
                        <td><?php echo e($sum2->nip); ?></td>
                        <td><?php echo e($sum2->nama); ?></td>
                        <td><?php echo e($sum2->total); ?></td>
                    </tr>
                    <?php $no++;?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
</table>
</center>
<script src="<?php echo e(url('assets/js/export_csv.js')); ?>"></script>
<?php
echo $export;
echo $exportN;
?>
