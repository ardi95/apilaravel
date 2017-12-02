@extends('template.template')

@section('content')

<div class="container-fluid">
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					{!! Form::open(array('url'=>'bukutamufrontend','files'=>'true','class'=>'form-horizontal','id'=>'form','files'=>'true','method'=>'POST')) !!}

					<div class="form-group">
						<label>Nama</label>
					    <input type="text" class="form-control" name="nama" placeholder="Masukkan nama">
				  	</div>
				  	<div class="form-group">
						<label>Alamat</label>
					    <textarea class="form-control" name="alamat" rows="3" placeholder="Masukkan alamat"></textarea>
				  	</div>
				  	<div class="form-group">
					    <label>Jenis Kelamin</label>
					    <select class="form-control" name="jenis_kelamin">
							<option value="pria">Pria</option>
							<option value="wanita">Wanita</option>
						</select>
				  	</div>
				  	<div class="form-group">
						<label>No.Telp</label>
					    <input type="text" class="form-control" name="notel" placeholder="Masukkan nomor telephone">
				  	</div>
				  	<div class="form-group">
					    <label>Foto</label>
					    <input type="file" name="foto">
					    <p class="help-block">Example block-level help text here.</p>
				  	</div>
				  	<button type="submit" class="btn btn-default">Submit</button>
				  	{!! Form::close()!!}
				</div>

				<div class="col-lg-8">
					<div class="row">
						<div class="col-lg-2 col-lg-offset-10">
							{!! Form::open(array('url'=>'searchbukutamu','class'=>'form-inline','id'=>'form','method'=>'GET')) !!}
								<label for="exampleInputName2">Cari</label>
				    			<input type="text" class="form-control" name="keyword" placeholder="Nama">
							{!! Form::close()!!}
						</div>
						
					</div>
					<div class="row">
						<div class="col-lg-12">
							
								<table class="table table-striped">
									<tr><thead><th>Nama</th><th>Alamat</th></thead></tr>
									@foreach($bukutamu as $b)
									<tr>
										<tbody>
											<td>{{ $b->nama }}</td>
											<td>{{ $b->alamat }}</td>
										</tbody>
										
									</tr>
									@endforeach
								</table>
								@if($keyword == null)
									{{ $bukutamu->withPath('bukutamufrontend')->links()}}
								@else
									{{ $bukutamu->appends(['keyword' => $keyword])->links() }}
								@endif
						</div>
						
						
					</div>
				</div>

			</div>
			
		</div>
	</div>
	
	
</div>


@endsection