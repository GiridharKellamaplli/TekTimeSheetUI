
<html>

<head>
<title>TekTimeSheet</title>
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

<body ng-app="myApp" class="ng-cloak">
	<div class="generic-container" ng-controller="UserController as ctrl">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="lead">Interview Slot Information </span>
			</div>

			<div class="row">
				<label>Click to get all Interview Slots </label>
				<button type="button" ng-click="ctrl.allSlots()"
					class="btn btn-warning btn-sm">All Interviews</button>
			</div>
			<br>

			<div class="row">
				<label>List with today interview details </label>
				<button type="button" ng-click="ctrl.todayInfo()"
					class="btn btn-warning btn-sm">Today's Interviews</button>
			</div>
			<br>

			<div class="row">
				<label>Interviews on the desired date</label>
				<p>
					Enter Date:<input type="text" id="datepicker" required>
				</p>
				<button type="button" ng-click="ctrl.getInterviewsByDate()">Details</button>
			</div>

			<form action="/viewPage/add">
				<div>
					<button type="submit">add</button>
				</div>
			</form>

		</div>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Users </span>
			</div>
			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>IDs</th>
							<th>Date</th>
							<th>Day</th>
							<th>StartTime</th>
							<th>EndTime</th>
							<th>Name</th>
							<th>Mode</th>
							<th>Client</th>
							<th>Vendor</th>
							<th>Round</th>

						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.interviews">
							<td><span ng-bind="u.id"></span></td>
							<td><span ng-bind="u.interviewDate"></span></td>
							<td><span ng-bind="u.dayOfWeek"></span></td>
							<td><span ng-bind="u.startTimeText"></span></td>
							<td><span ng-bind="u.endTimeText"></span></td>
							<td><span ng-bind="u.name"></span></td>
							<td><span ng-bind="u.mode"></span></td>
							<td><span ng-bind="u.client"></span></td>
							<td><span ng-bind="u.vendor"></span></td>
							<td><span ng-bind="u.round"></span></td>


						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<script src="app.js"></script>
	<script src="user_service.js"></script>
	<script src="user_controller.js"></script>


	<script>
		$(function() {
			$("#datepicker").datepicker({
				dateFormat : "yy-mm-dd"
			});
		});
	</script>

</body>

</html>