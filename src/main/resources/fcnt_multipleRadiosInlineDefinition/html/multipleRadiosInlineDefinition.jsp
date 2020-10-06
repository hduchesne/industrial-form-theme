<!-- Checkboxes input-->
<div class="form-group"
     ng-class="{'has-error': form[input.name].$invalid&&form[input.name].$dirty}"
     ng-show="resolveLogic()">


    <legend class="control-label" style="font-size:inherit;">
        {{input.label}}
        <span ng-if="isRequired()"
              ng-show="asteriskResolver()">
            <sup>&nbsp;<i class="fa fa-asterisk fa-sm"></i></sup>
        </span>
        <span role="button"
<%--              data-toggle="popover"--%>
              title="{{input.label}}"
              data-content="{{input.helptext}}"
              ng-show="input.helptext != undefined"
              id="{{input.name}}-enhanced-help"
              onclick="popoverToggle(this)">
            <i class="far fa-question-circle"></i>
        </span>
    </legend>



    <div class="form-check form-check-inline" ff-validations ff-logic
         ng-repeat="(radiok, radiov) in input.radios | filter: 'true' : null : visible">
        <input class="form-check-input"
               type="radio"
               id="{{input.name}}-id"
               name="{{input.name}}"
               ng-model="input.value"
               ng-model-options="{'allowInvalid':true}"
               value="{{radiov.key}}"
               ng-required="isRequired()"
               ng-disabled="readOnly"
               ng-change="makeDirty()"
               ff-validations
               ff-logic
               ff-focus-tracker="{{input.name}}_{{radiov.key}}">
<%--        <input class="form-check-input"--%>
<%--               type="radio"--%>
<%--               id="{{input.name}}-id"--%>
<%--               name="{{input.name}}"--%>
<%--               checklist-model="input.value"--%>
<%--               ng-required="checkValues()"--%>
<%--               checklist-value="radiov.key"--%>
<%--               checklist-change="makeDirty(); ffValidate()"--%>
<%--               ng-model-options="{'allowInvalid':true}"--%>
<%--               ng-disabled="readOnly"--%>
<%--               ff-focus-tracker="{{input.name}}_{{radiov.key}}"--%>
<%--               ng-init="input.value.length > 0 ? makeDirty() : ''">--%>

        <label class="form-check-label" for="{{input.name}}-id">
            {{radiov.value}}
        </label>
    </div>

<%--    <small id="{{input.name}}-help" class="form-text text-muted"--%>
<%--           ng-show="input.helptext != undefined">--%>
<%--        {{input.helptext}}--%>
<%--    </small>--%>

    <div class="invalid-feedback"
         ng-repeat="(validationName, validation) in input.validations"
         ng-show="showErrorMessage(validationName)">
        {{validation.message}}
    </div>

</div>