<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use App\daily;
use DB;
use Redirect;

class PresenceController extends Controller
{
	public function Index(){
		if (Session::has('login')) {
			return redirect('/admin');
		}else{
			return view('index');
			// return Redirect::to('https://www.attrack.ib-synergy.co.id/index');
		}
	}
	public function Indexs(){
		if (Session::has('login')) {
			return redirect('/admin');
		}else{
			return view('index');
		}
	}
    public function helped (){
        if (!Session::get('login')) {
            return redirect('/')->with('alert','login terlebih dahulu');
        }else{
        $isiP=service::where('status','')->get();
        include 'pesan.php';
        return view('admin.isi_pesan',['isiP'=>$isiP,'status'=>$status]);
    }
    }

		public function Dedit($id){
			 $view=daily::join('users','daily.nip','=','users.nip')->where('daily.id',$id)->first();
			 $hakakses = Session::get('hakakses');
			 $daily='daily';
			 return view('admin.edit_daily',[
					 'view'=>$view,
					 'hakakses'=>$hakakses,
					 'edit'=>$daily,
					 'navhome'=>'',
					 'navpresence'=>'',
					 'navactivity'=>'',
					 'navemployee'=>'btn-light btn']);
	 }
	 public function Aedit($id){
			 $view=DB::table('activity')->join('users','activity.nip','=','users.nip')->where('activity.id',$id)->first();
			 $hakakses = Session::get('hakakses');
			 $activity='activity';
			 return view('admin.edit_daily',[
					 'view'=>$view,
					 'hakakses'=>$hakakses,
					 'edit'=>$activity,
					 'navhome'=>'',
					 'navpresence'=>'',
					 'navactivity'=>'',
					 'navemployee'=>'btn-light btn']);
	 }

	 public function SaveDaily(Request $req,$edit){
			 $id=$req->id;
			 $cin=$req->cin;
			 $locin=$req->locin;
			 $cout=$req->cout;
			 $locout=$req->locout;

		 if ($edit=='daily') {
			 if ($locout=='') {
					 $save=[
					 'intime'=>$cin,
					 'locin'=>$locin,
					 'outtime'=>$cout,
					 'locout'=>''];

					 daily::where('id',$id)->update($save);
					 return redirect('/homeA');
			 }else{
				 $save=[
				 'intime'=>$cin,
				 'locin'=>$locin,
				 'outtime'=>$cout,
				 'locout'=>$locout];

				 daily::where('id',$id)->update($save);
				 return redirect('/homeA');
			 }
		 }elseif ($edit=='activity') {
			 if ($locout=='') {
					 $save=[
					 'intime'=>$cin,
					 'locin'=>$locin,
					 'outtime'=>$cout,
					 'locout'=>''];

					 DB::table('activity')->where('id',$id)->update($save);
					 return redirect('/homeA');
			 }else{
				 $save=[
				 'intime'=>$cin,
				 'locin'=>$locin,
				 'outtime'=>$cout,
				 'locout'=>$locout];

				 DB::table('activity')->where('id',$id)->update($save);
				 return redirect('/homeA');
			 }
		 }
	 }

	 public function DeleteDaily($id,$edit){

			 if ($edit=='daily') {
				 daily::where('id',$id)->delete();

				 return redirect('/homeA');
			 }elseif ($edit=='activity') {
				 DB::table('activity')->where('id',$id)->delete();

				 return redirect('/homeA');
			 }

			 }

				 public function Addcust(Request $req){
		 $cust =$req->addcust;

		 $save=['namapt'=>$cust];
		 DB::table('customer')->insert($save);
		 return Redirect ('/admin')->with('successalert','Success Add Customer');
	 }

}
