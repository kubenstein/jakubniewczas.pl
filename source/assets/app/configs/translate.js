angular.module('jakubniewczas')
  .config(['$translateProvider', function($translateProvider) {
    $translateProvider.useLoaderCache(true);
    $translateProvider.preferredLanguage('en');
    $translateProvider.useStaticFilesLoader({
      prefix: 'api/v1/i18n/locale-',
      suffix: '.json'
    });
}]);