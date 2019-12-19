<form action="{{ route('profile') }}" method="post">
    <input type="hidden" name="_token" value="{{ Session::token() }}">
    <div class="row">
        <div class="col-md-4 mt-2">
            <h4 class="mb-4">Your profile</h4>
            <div class="form-group">
                <label for="">Full name</label>
                <input value="{{ auth()->user()->name }}" type="text" name="name" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Email</label>
                <input value="{{ auth()->user()->email }}" type="text" name="email" class="form-control">
            </div>
            <div class="form-group">
                <label for="">New Password</label>
                <input type="text" name="new_password" class="form-control">
            </div>
            <div class="form-group">
                <button class="btn btn-dark btn-block">Save</button>
            </div>
        </div>
    </div>
</form>
