'use strict';

angular.module('myApp').controller('UserController',
		[ '$scope', 'UserService', function($scope, UserService) {
			var self = this;
			self.user = {
				interviewLocalDate : '',
				interviewDate: null,
				startTimeText : '',
				endTimeText : '',
				name : '',
				mode : '',
				client : '',
				vendor : '',
				round : ''
			};
			// self.users=[];
			self.allSlots = allSlots;

			self.todayInfo = todayInfo;
			self.getInterviewsByDate = getInterviewsByDate;

			// All Interview Slots
			function allSlots() {
				UserService.getAllInterviewDetails().then(function(data) {
					self.interviews = data;
					self.selected = data[0];
				})
			}

			// Today's Interview Info
			function todayInfo() {
				UserService.getTodayInterviewDetails().then(function(data) {
					self.interviews = data;
					self.selected = data[0];
				})
			}

			function getInterviewsByDate() {
				var x = document.getElementById("datepicker").value;
				UserService.getInterviewsByDate(x).then(function(data) {
					self.interviews = data;
					self.selected = data[0];
				})
			}
			self.addInterview = function(user) {
				console.log('in controller');
				console.log("hi " + user.name);
				console.log(JSON.stringify(user));
				var interviewLocalDate = user.interviewLocalDate;
				console.log(interviewLocalDate);

				UserService.addInterview(user).then(allSlots, function() {
					console.log('failure');
				})
			}

		} ]);
