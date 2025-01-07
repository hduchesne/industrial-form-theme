<%--<div class="col-sm-offset-2 col-sm-10" ng-if="vm.currentForm.controls == undefined">--%>
<div class="d-flex mt-4 btn-control" ng-if="vm.currentForm.controls == undefined">
    <button class="btn btn-primary prev" type="button"
            ng-click="vm.update(false); vm.scrollToTop()"
            ng-disabled="vm.getFormController().$submitted"
            ng-show="vm.currentStep>0&&!vm.isSubmitted()"
            message-key="angular.ffController.button.previousStep">
    </button>
    <button class="btn btn-primary submit"
            type="button"
            data-submit="customsubmit"
            ng-click="vm.update(true); vm.scrollToTop()"
            ng-disabled="vm.getFormController().$invalid
                                || vm.getFormController().$submitted
                                || vm.isPreviewMode
                                || (vm.currentForm.displayCaptcha && vm.getCaptchaKey() !== null && !vm.captchaLoaded && vm.currentForm.displayCaptcha)
                                || vm.currentStep<vm.currentForm.steps.length-1"
            ng-show="vm.currentStep==vm.currentForm.steps.length-1&&!vm.isSubmitted()"
            message-key="angular.ffController.button.submit">
    </button>
    <button class="btn btn-primary next"
            type="button"
            data-submit="customsubmit"
            ng-click="vm.update(true); vm.scrollToTop()"
            ng-disabled="vm.getFormController().$invalid || vm.getFormController().$submitted"
            ng-show="vm.currentStep<vm.currentForm.steps.length-1&&!vm.isSubmitted()"
            message-key="angular.ffController.button.nextStep">
    </button>
    <button class="btn btn-danger reset"
            type="button" ng-click="vm.reset()"
            ng-disabled="vm.getFormController().$submitted || vm.currentForm.steps[vm.currentStep].resetDisabled"
            ng-show="!vm.isSubmitted()"
            message-key="angular.ffController.button.reset">
    </button>
</div>
