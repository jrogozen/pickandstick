app.factory('Matchup', function($resource) {
  return $resource('/matchups/:id', {
    // custom routes here
  });
});

