(function () {
  'use strict';

  angular.module("app").controller("pplCtlr", function($scope){
    window.$scope = $scope;
    $scope.people = [
      {
        name: "Natasha",
        bio: "Black Widow",
        bioVisible: true
      },
      {
        name: "Steve",
        bio: "Captain America",
        bioVisible: true
      },
      {
        name: "Sam",
        bio: "Falcon",
        bioVisible: true
      },
      {
        name: "Tony",
        bio: "Iron Man",
        bioVisible: true
      },
      {
        name: "Thor",
        bio: "God of Thunder",
        bioVisible: true
      }
    ];

    $scope.newPerson = "Name";
    $scope.newBio = "Bio";
    $scope.counter = $scope.people.length;

    $scope.toggleBio = function(person) {
      person.bioVisible = !person.bioVisible;
    };

    $scope.addPerson = function() {
      if ($scope.newPerson) {
        var person = {
        name: $scope.newPerson,
        bio: $scope.newBio,
        bioVisible: false
      };
      $scope.people.push(person);
      $scope.counter ++;
    }
      $scope.newPerson = null;
      $scope.newBio = null;
  };

  });
})();
