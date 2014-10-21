app.factory('User', function($resource) {
  return $resource('/users/:id', {id: "@id"}, {
    // custom routes here

    login: {
      method: 'post',
      url: '/login'
    }

  });
});

