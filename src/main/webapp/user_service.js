(function () {
    var mod = angular.module("myApp");
    mod.service("UserService", function ($http) {
    	var REST_SERVICE_URI = 'http://localhost:8002/interview/';
      var self = this;

      //All Interview Details
      self.getAllInterviewDetails = function () {
        var promise1 = $http.get(REST_SERVICE_URI);
        console.log("service: "+promise1)
        var promise2 = promise1.then(function (response) {
        	console.log("data: "+response.data);
          return response.data;
        });
        return promise2;
      };

      //Today's Interview Details
      self.getTodayInterviewDetails = function () {
        var promise1 = $http.get(REST_SERVICE_URI+'today');
        var promise2 = promise1.then(function (response) {
          return response.data;
        });
        return promise2;
      };

      //Interviews on the desired date
      self.getInterviewsByDate = function (x) {
        
          console.log(x);
        var promise1 = $http.get(REST_SERVICE_URI+x);
        var promise2 = promise1.then(function (response) {
          return response.data;
        });
        return promise2;
      };

      //Add Interview Slot

      self.addInterview = function (user) {
        console.log("in service");
        console.log("hi "+user.name);
       
          var promise1 = $http.post(REST_SERVICE_URI,user);

          var promise2 = promise1.then(function (response) {
            return response.data;
          });
          return promise2;
        };
  
    });
})();