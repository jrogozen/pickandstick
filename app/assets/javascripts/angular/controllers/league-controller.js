app.controller('LeagueController', ['$scope', 'User', 'Matchup', 'Team', '$location',
  function($scope, User, Matchup, Team, $location) {

    $scope.weeks = {
      "week 1": 1,
      "week 2": 2,
      "week 3": 3,
      "week 4": 4,
      "week 5": 5,
      "week 6": 6,
      "week 7": 7,
      "week 8": 8,
      "week 9": 9,
      "week 10": 10,
      "week 11": 11,
      "week 12": 12,
      "week 13": 13,
      "week 14": 14,
      "week 15": 15,
      "week 16": 16,
      "week 17": 17,
    }

    $scope.selected = $scope.weeks["week 1"];
    
    $scope.getWeek = function(selected) {
      Matchup.getWeek({week: selected}, function(data) {
        $scope.show_matches = data;
      });
    };

  }
]);