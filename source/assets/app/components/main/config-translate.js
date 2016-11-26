angular.module('jakubniewczas')
  .config(['$sceDelegateProvider', function($sceDelegateProvider) {
    $sceDelegateProvider.resourceUrlWhitelist([
      'self',
      'https://player.vimeo.com/**'
    ]);
  }]);