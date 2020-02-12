<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>



<form ng-show="!vm.showPreloadMessage"
      class="form-horizontal shadow p-4 {{vm.cssClassName}}"
      novalidate name="{{vm.formName}}"
      ng-model-options="{updateOn:'default blur', debounce: { default: 0, blur: 0 } }"
      ng-submit="vm.preventSubmit($event)"
      data-form-id="{{vm.currentForm.jcrId}}">

    <fieldset>
        <legend ng-if="vm.showFormTitle && !vm.isSubmitted()">{{vm.currentForm.displayableName}}</legend>
        <ff-input ng-if="!vm.isLayoutAvailable && !input.isInFieldset"
                  ng-repeat="input in vm.inputs"
                  input="input"
                  resolve-logic="vm.resolveLogic(input, vm.getFormController())"
                  resolve-placeholder="vm.resolvePlaceholder(input)"
                  resolve-inputsize="vm.resolveInputsize(input)"
                  resolve-name="vm.resolveName(input)"
                  resolve-label="vm.resolveLabel(input)"
                  dispatch-active-input-event="vm.dispatchActiveInputEvent(type)"
                  validation-display-level="{{vm.validationDisplayLevel}}">
        </ff-input>
        <div class="row"
             ng-if="vm.isLayoutAvailable && !input.isInFieldset"
             ng-repeat="rows in vm.currentForm.layoutJson.steps[vm.currentStep].rows">
            <div class="{{cols.col}} {{cols.offset}}"
                 ng-repeat="cols in rows.row">
                <div ng-if="cols.layoutUUID !== null">
                    <ff-input input="vm.inputs[vm.preparedLayoutInputs[cols.layoutUUID]]"
                              resolve-logic="vm.resolveLogic(vm.inputs[vm.preparedLayoutInputs[cols.layoutUUID]], vm.getFormController())"
                              resolve-placeholder="vm.resolvePlaceholder(vm.inputs[vm.preparedLayoutInputs[cols.layoutUUID]])"
                              resolve-inputsize="vm.resolveInputsize(vm.inputs[vm.preparedLayoutInputs[cols.layoutUUID]])"
                              resolve-name="vm.resolveName(vm.inputs[vm.preparedLayoutInputs[cols.layoutUUID]])"
                              resolve-label="vm.resolveLabel(vm.inputs[vm.preparedLayoutInputs[cols.layoutUUID]])"
                              validation-display-level="{{vm.validationDisplayLevel}}">
                    </ff-input>
                </div>
            </div>
        </div>
        <div class="row" ng-if="vm.getCaptchaKey() !== null && vm.currentForm.steps.length-1 === vm.currentStep && vm.currentForm.displayCaptcha">
            <div class="col-sm-10 col-sm-offset-2 text-right">
                <div vc-recaptcha theme="'light'" key="vm.getCaptchaKey()" on-create="vm.notifyOfCaptchaLoad()" lang="vm.getContextualData().locale" ng-model="vm.captchaResponse"></div>
            </div>
        </div>

<%--        <div class="form-group" ng-show="vm.showFormControlButtons()">--%>
        <div ng-show="vm.showFormControlButtons()">
            <template:include view="formViewBtnCtrlU" templateType="html" />
            <template:include view="formViewBtnCtrlNU" templateType="html" />
        </div>
    </fieldset>
</form>