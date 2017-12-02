<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
	@yield('css')
</head>
<body>
	@extends('template.template')

	@section('content')

	<div class="container">
		<div class="row">
			<form action="{{ url('login')}}" method="post">
				{{ csrf_field() }}
			  	<div class="form-group">
			    	<label for="exampleInputEmail1">Email address</label>
			    	<input type="email" class="form-control" id="exampleInputEmail1" name="email" placeholder="Email">
			  	</div>
			  	<div class="form-group">
			    	<label for="exampleInputPassword1">Password</label>
			    	<input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
			  	</div>
			  <button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>

	@endsection

	@yield('content')

	<script type="text/javascript" src="{{ asset('js/jquery-3.2.1.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('js/app.js') }}"></script>
	@stack('dynamic/js')
</body>
</html>