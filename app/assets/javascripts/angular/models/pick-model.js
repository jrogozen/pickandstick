app.factory('Pick', function($resource) {
  return $resource('/pick/:id', {id: "@id"}, {
    // custom routes here
  });
});

