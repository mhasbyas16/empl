<link rel="stylesheet" href="{{url('assets/css/materializes.css')}}">

@extends('template')
@section('isi')
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

    @include('admin.awan.gaya_awan')

    <div class="container z-depth-3" style="min-height: 300px">
    </br>

    @if(\Session::has('alert'))
	   <div class="alert alert-danger">
	   		<strong>{{Session::get('alert')}}</strong>
	   </div>
    @elseif(\Session::has('success_alert'))
    <div class="alert alert-success">
   		<strong>{{Session::get('success_alert')}}</strong>
    </div>
    @endif

<form method="post" action="{{url('/savedaily')}}/{{$edit}}">
{{csrf_field()}}
    <table>
        <thead>
            <tr>
                <td><input type="hidden" name="id" maxlength="13" value="{{$view->id}}" readonly style="font-size: 16px"/></td>
            </tr>
            <tr>
                <td width="200px">Name</td>
                <td>:</td>
                <td><input type="text" name="nama" maxlength="13" value="{{$view->nama}}" readonly style="font-size: 16px"/></td>
            </tr>
            <tr>
				        <td>Check In</td>
				        <td>:</td>
				        <td><input type="text" name="cin" maxlength="35" value="{{$view->intime}}" style="font-size: 16px"/></td>
			      </tr>
            <tr>
                <td>Location In</td>
                <td>:</td>
                <td><input type="text" name="locin" maxlength="35" value="{{$view->locin}}" style="font-size: 16px"/></td>
            </tr>
            <tr>
                <td>Check Out</td>
                <td>:</td>
                <td><input type="text" name="cout" maxlength="35" value="{{$view->outtime}}" style="font-size: 16px"/></td>
            </tr>
            <tr>
                <td>Location Out</td>
                <td>:</td>
                <td><input type="text" name="locout" maxlength="35" value="{{$view->locout}}" style="font-size: 16px"/></td>
            </tr>
			      <tr>
				        <td colspan="3" align="center" style="padding-top: 15px"><button type="submit" class="btn btn-success btn-block" name="update" style="background-color: #000051; font-size: 20px"/>UPDATE</button>
                </td>
			      </tr>
            <tr>
				        <td colspan="3" align="center" style="padding-top: 15px">
                <a href="{{url('/delete_daily')}}/{{$view->id}}/{{$edit}}"
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

<script type="text/javascript" src="{{url('assets/js/materialize.js')}}"></script>
<script type="text/javascript" src="{{url('assets/js/materialize.min.js')}}"></script>
<script>
	$(document).ready(function(){
		$('select').material_select();
	});
</script>
@endsection
