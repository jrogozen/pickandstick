app.controller('UserController', ['$scope', 'User', '$location',
  function($scope, User, $location) {
    $scope.users = User.query();
  }
]);