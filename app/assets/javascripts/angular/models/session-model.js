app.factory('Session', function($resource) {
  return $resource('/current-user', {}, {
    // custom routes here
    
    getSessionData: {
      method: 'get',
      isArray: false
    }

  });
});

