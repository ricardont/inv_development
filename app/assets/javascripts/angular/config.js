/**
 * Created by orlando on 09/12/16.
 */
app = angular.module("app", ['angularModalService', 'ngFileUpload', 'NgSwitchery', 'naif.base64']);

$(document).on('page:change', function(){
    angular.bootstrap(document.body, ['app']);
});



