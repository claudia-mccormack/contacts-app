(function () {
  'use strict';

  angular.module("app").controller("testCtlr", function($scope) {
    $scope.message = "Hello!";
    window.$scope = $scope;
  });
})();
