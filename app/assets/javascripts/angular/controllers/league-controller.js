app.controller('LeagueController', ['$scope', 'User', 'Matchup', 'Team', '$location',
  function($scope, User, Matchup, Team, $location) {

    $scope.matches = []

    $scope.all_matches = Matchup.query(function(){
    });

  }
]);