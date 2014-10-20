app.controller('LeagueController', ['$scope', 'User', 'Matchup', 'Team', '$location',
  function($scope, User, Matchup, Team, $location) {

    $scope.matchups = Matchup.query();

  }
]);