app.factory('User', function($resource) {
  return $resource('/users/:id', {
    // custom routes here
  });
});

