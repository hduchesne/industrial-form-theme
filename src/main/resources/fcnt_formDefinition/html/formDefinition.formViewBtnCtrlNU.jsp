<%--<div class="col-sm-offset-2 col-sm-10" ng-if="vm.currentForm.controls != undefined">--%>
<div class="d-flex mt-4" ng-if="vm.currentForm.controls != undefined">
    <button class="btn btn-primary px-2 py-2" type="button"
            ng-click="vm.update(false); vm.scrollToTop()"
            ng-disabled="vm.getFormController().$submitted"
            ng-show="!vm.currentForm.controls.hidePrevious&&vm.currentStep>0&&!vm.isSubmitted()">
        <span ng-if="vm.currentForm.controls.previousLabel != undefined">{{vm.currentForm.controls.previousLabel}}</span>
        <span ng-if="vm.currentForm.controls.previousLabel == undefined" message-key="angular.ffController.button.previousStep"></span>
    </button>
    <button class="btn btn-primary ml-auto px-2 py-2"
            type="button"
            data-submit="customsubmit"
            ng-click="vm.update(true); vm.scrollToTop()"
            ng-disabled="vm.getFormController().$invalid
                                || vm.getFormController().$submitted
                                || vm.isPreviewMode
                                || (vm.currentForm.displayCaptcha && vm.getCaptchaKey() !== null && !vm.captchaLoaded && vm.currentForm.displayCaptcha)
                                || vm.currentStep<vm.currentForm.steps.length-1"
            ng-show="vm.currentStep==vm.currentForm.steps.length-1&&!vm.isSubmitted()">
        <span ng-if="vm.currentForm.controls.submitLabel != undefined">{{vm.currentForm.controls.submitLabel}}</span>
        <span ng-if="vm.currentForm.controls.submitLabel == undefined" message-key="angular.ffController.button.submit"></span>
    </button>

<%--    <button class="btn btn-sm btn-default"--%>
    <button class="btn btn-primary ml-auto px-2 py-2"
            type="button"
            data-submit="customsubmit"
            ng-click="vm.update(true); vm.scrollToTop()"
            ng-disabled="vm.getFormController().$invalid || vm.getFormController().$submitted"
            ng-show="vm.currentStep<vm.currentForm.steps.length-1&&!vm.isSubmitted()">
        <span ng-if="vm.currentForm.controls.nextLabel != undefined">{{vm.currentForm.controls.nextLabel}}</span>
        <span ng-if="vm.currentForm.controls.nextLabel == undefined" message-key="angular.ffController.button.nextStep"></span>
    </button>

    <button class="btn btn-danger ml-auto px-2 py-2"
            type="button" ng-click="vm.reset()"
            ng-disabled="vm.getFormController().$submitted || vm.currentForm.steps[vm.currentStep].resetDisabled"
            ng-show="!vm.currentForm.controls.hideReset&&!vm.isSubmitted()">
        <span ng-if="vm.currentForm.controls.resetLabel != undefined">{{vm.currentForm.controls.resetLabel}}</span>
        <span ng-if="vm.currentForm.controls.resetLabel == undefined" message-key="angular.ffController.button.reset"></span>
    </button>
</div>