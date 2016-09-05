(function () {
  'use strict';

  angular.module("app").controller("tasksCtlr", function($scope){
    $scope.tasks = [
      {
        text: "Feed the bird",
        done: false,
      },
      {
        text: "Wash the dishes",
        done: false,
      },
      {
        text: "Shelve stray books",
        done: false,
      }
    ];

    $scope.newTask = null;
    window.$scope = $scope;

    $scope.numberNotDone = function() {
      console.log('something');
      var counter = 0;
      for (var i = 0; i < $scope.tasks.length; i++) {
        if ($scope.tasks[i].done === false) {
            counter++;
        }
      }
      return counter;
    };

    $scope.toggleDone = function(task) {
      task.done = !task.done;
      numberNotDone();
    };

    $scope.addTask = function(task) {
      var newTask = { text: task, done: false };
      $scope.tasks.push(newTask);
      $scope.newTask = null;
      numberNotDone();
    };

    $scope.deleteTasks = function() {
      for (var i = 0; i < $scope.tasks.length; i++) {
        if ($scope.tasks[i].done)
        $scope.tasks.splice(i, 1);
      }
    };


  });
})();
