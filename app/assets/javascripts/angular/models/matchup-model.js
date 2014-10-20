app.factory('Matchup', function($resource) {
  return $resource('/matchups/:id', {id: "@id"}, {
    // custom routes here

    getWeek: {
      method: 'get',
      url: '/matchups/get_week',
      isArray: true
    }

  });
});

// GET /matchups/get_week isArray: true