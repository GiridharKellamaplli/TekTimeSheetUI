<html>

<head>
<title>Add Slot</title>
<style>
.username.ng-valid {
	background-color: lightgreen;
}
.username.ng-dirty.ng-invalid-required {
	background-color: red;
}
.username.ng-dirty.ng-invalid-minlength {
	background-color: yellow;
}
.email.ng-valid {
	background-color: lightgreen;
}
.email.ng-dirty.ng-invalid-required {
	background-color: red;
}
.email.ng-dirty.ng-invalid-email {
	background-color: yellow;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="app.css" rel="stylesheet"></link>
</head>

<body ng-app="myApp" class="ng-cloak"
	ng-controller="UserController as ctrl">
	<form class="form-horizontal" role="form" ng-submit="addRow()"
		method="POST">
		<div class="generic-container">

			<!--
    <div class="form-group">
		<label class="col-md-1 control-label">id</label>
		<div class="col-md-9">
			<input type="text" class="form-control" id="timepicker" name="id"
				ng-model="ctrl.user.id" /-->

		</div>
		
		<div>
		<div class="form-group">
			<label class="col-md-1 control-label">date</label>
			<div class="col-md-9">
				<input type="text" class="form-control" id="datepicker" name="date"
					ng-model="ctrl.user.date" />

			</div>
			</div>

		</div>
		<div class="form-group">
			<label class="col-md-1 control-label">startTime</label>
			<div class="col-md-9">
				<input type="text" class="form-control" id="timepicker"
					name="startTime" ng-model="ctrl.user.startTime" />

			</div>

		</div>
		
		<div class="form-group">
			<label class="col-md-1 control-label">endTime</label>
			<div class="col-md-9">
				<input type="text" class="form-control" id="timepicker"
					name="endTime" ng-model="ctrl.user.endTime" />

			</div>
		</div>
		<div class="form-group">
			<label class="col-md-1 control-label">name</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="name"
					ng-model="ctrl.user.name" />

			</div>
		</div>
		<div class="form-group">
			<label class="col-md-1 control-label">mode</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="mode"
					ng-model="ctrl.user.mode" />

			</div>
		</div>
		<div class="form-group">
			<label class="col-md-1 control-label">client</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="client"
					ng-model="ctrl.user.client" />

			</div>
		</div>

		<div class="form-group">
			<label class="col-md-1 control-label">vendor</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="vendor"
					ng-model="ctrl.user.vendor" />

			</div>
		</div>
		<div class="form-group">
			<label class="col-md-1 control-label">round</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="round"
					ng-model="ctrl.user.round" />

			</div>
		</div>

		<div class="form-group">
			<div style="padding-left: 110px">
				<div class="row">
					<label>Click here to add slot </label>
					<button type="button" ng-click="ctrl.addInterview(ctrl.user)"
						class="btn btn-warning btn-sm">Add</button>
				</div>
			</div>
		</div>

	</form>

	<!--<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	 <script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script> -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<script src="../app.js"></script>
	<script src="../user_service.js"></script>
	<script src="../user_controller.js"></script>
	<script>
		$(function() {
			$("#datepicker").datepicker({
				dateFormat : "yy,mm ,dd"
			});
		});
	</script>
	<!--<script>
            $(function() {
            $('#timepicker').timepicker({
                 timeFormat: "hh:mm:ss"
            });
            });
    </script>-->
</body>
</html>