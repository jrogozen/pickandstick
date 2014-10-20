app.factory('Team', function($resource) {
  return $resource('/teams/:id', {
    // custom routes here
  });
});

