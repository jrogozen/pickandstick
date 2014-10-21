app.controller('UserController', ['$scope', '$location', '$routeParams', 'User', 'Session',
  function($scope, $location, $routeParams, User, Session) {
    $scope.users = User.query();

    Session.getSessionData(function(data) {
      if (data.user_id) {
        $scope.currentUser = User.get({id: data.user_id});
      }
    });

    if ($routeParams.id) {
      $scope.user = User.get({id: $routeParams.id});
    }

    $scope.newUser = function(data) {
      User.save({user: data}, function(success){
        $location.path('/users/profile');
      });
    };

    $scope.loginUser = function(data) {
      User.login({user: data}, function(success) {
        $location.path('/users/profile');
      });
    };

  }
]);