<center>
<table>
    <tr>
        <td><h3>Hasil Record Tanggal {{$date1}} Sampai Dengan {{$date2}}</h3></td>
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
					@foreach($isitbl as $isitbl)
						<tr>
							<td>{{$no}}.</td>
							<td>{{$isitbl->nip}}</td>
							<td>{{$isitbl->nama}}</td>
							<td>{{$isitbl->email}}</td>
							<td>{{$isitbl->jabatan}}</td>
							<td>{{$isitbl->date}}</td>
							<td>{{$isitbl->intime}}</td>
					 		<td>{{$isitbl->outtime}}</td>
						</tr>
					<?php $no++; ?>
				@endforeach

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
                    @foreach ($sum as $sum)
                    <tr>
                        <td>{{$no}}</td>
                        <td>{{$sum->nip}}</td>
                        <td>{{$sum->nama}}</td>
                        <td>{{$sum->total}}</td>
                    </tr>
                    <?php $no++;?>
                    @endforeach
                </tbody>
</table><br><br><br>

<table>
    <tr>
        <td><h3>Daftar Izin Karyawan Tanggal {{$date1}} Sampai Dengan {{$date2}}</h3></td>
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
					@foreach($leave as $leave)
						<tr>
							<td>{{$no}}.</td>
							<td>{{$leave->nip}}</td>
                            <td>{{$leave->nama}}</td>
                            <td>{{$leave->date}}</td>
                            <td>{{$leave->type}}</td>
                            <td>{{$leave->reason}}</td>
						</tr>
					<?php $no++; ?>
				@endforeach
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
                    @foreach ($sum2 as $sum2)
                    <tr>
                        <td>{{$no}}</td>
                        <td>{{$sum2->nip}}</td>
                        <td>{{$sum2->nama}}</td>
                        <td>{{$sum2->total}}</td>
                    </tr>
                    <?php $no++;?>
                    @endforeach
                </tbody>
</table>
</center>
<script src="{{url('assets/js/export_csv.js')}}"></script>
<?php
echo $export;
echo $exportN;
?>
