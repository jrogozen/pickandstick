app.controller('UserController', ['$scope', '$location', 'User', 'Session',
  function($scope, $location, User, Session) {
    $scope.users = User.query();

    Session.getSessionData(function(data) {
      $scope.user = User.get({id: data.user_id});
    });

    $scope.newUser = function(data) {
      User.save({user: data}, function(success){
        $location.path('/users');
      });
    };

    $scope.loginUser = function(data) {
      User.login({user: data}, function(success) {
        $location.path('/users/' + success.id);
      });
    };

  }
]);