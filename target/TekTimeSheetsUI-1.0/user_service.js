(function () {
    var mod = angular.module("myApp");
    mod.service("UserService", function ($http) {
      var self = this;

      //All Interview Details
      self.getAllInterviewDetails = function () {
        var promise1 = $http.get('http://ec2-52-91-247-47.compute-1.amazonaws.com:8080/TekTimeSheet-1.0/interview/');
        var promise2 = promise1.then(function (response) {
          return response.data;
        });
        return promise2;
      };

      //Today's Interview Details
      self.getTodayInterviewDetails = function () {
        var promise1 = $http.get('http://ec2-52-91-247-47.compute-1.amazonaws.com:8080/TekTimeSheet-1.0/interview/today');
        var promise2 = promise1.then(function (response) {
          return response.data;
        });
        return promise2;
      };

      //Interviews on the desired date
      self.getInterviewsByDate = function (x) {
          console.log('entered service');
          console.log(x);
        var promise1 = $http.get('http://ec2-52-91-247-47.compute-1.amazonaws.com:8080/TekTimeSheet-1.0/interview/'+x);
        var promise2 = promise1.then(function (response) {
          return response.data;
        });
        return promise2;
      };
  
    });
})();