app.controller('MatchupController', ['$scope', 'User', 'Matchup', 'Team', '$location',
  function($scope, User, Matchup, Team, $location) {

    $scope.teams = Team.query();

    $scope.team = {
      week: 1
    }


    $scope.newMatchup = function(data) {
      Matchup.save(data, function() {
        $location.path('/league');
      });
    };

  }
]);