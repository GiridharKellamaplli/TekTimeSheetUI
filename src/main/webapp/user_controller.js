'use strict';

angular.module('myApp').controller('UserController', ['$scope', 'UserService', function($scope, UserService) {
    var self = this;
    self.user={id:null,username:'',address:'',email:''};
    self.users=[];
    self.allSlots=allSlots;
    self.todayInfo=todayInfo;
    self.getInterviewsByDate=getInterviewsByDate;

    //All Interview Slots
    function allSlots(){
        UserService.getAllInterviewDetails().then(
            function (data){
                
                self.interviews=data;
                self.selected=data[0];
            }
        )
    }

    //Today's Interview Info
    function todayInfo(){
        UserService.getTodayInterviewDetails().then(
            function(data){
                self.interviews=data;
                self.selected=data[0];
            }
        )
    }

    function getInterviewsByDate(){
        var x = document.getElementById("datepicker").value;
        UserService.getInterviewsByDate(x).then(
            function(data){
                self.interviews=data;
                self.selected=data[0];
            }
        )
    }

}]);
