<!-- Checkboxes input-->
<div class="form-group"
     ng-class="{'has-error': form[input.name].$invalid&&form[input.name].$dirty}"
     ng-show="resolveLogic()">


    <legend class="control-label">
        {{input.label}}
        <span ng-if="isRequired()"
              ng-show="asteriskResolver()">
            <sup>&nbsp;<i class="fa fa-asterisk fa-sm"></i></sup>
        </span>
    </legend>

    <div class="form-check form-check-inline" ff-validations ff-logic
         ng-repeat="checkboxOption in input.checkboxes | filter: 'true' : null : visible">
        <input class="form-check-input"
               type="checkbox"
               id="{{input.name}}-id"
               name="{{input.name}}"
               checklist-model="input.value"
               ng-required="checkValues()"
               checklist-value="checkboxOption.key"
               checklist-change="makeDirty(); ffValidate()"
               ng-model-options="{'allowInvalid':true}"
               ng-disabled="readOnly"
               ff-focus-tracker="{{input.name}}_{{checkboxOption.key}}"
               ng-init="input.value.length > 0 ? makeDirty() : ''">

        <label class="form-check-label" for="{{input.name}}-id">
            {{checkboxOption.value}}
        </label>
    </div>

    <small id="{{input.name}}-help" class="form-text text-muted"
           ng-show="input.helptext != undefined">
        {{input.helptext}}
    </small>

    <div class="invalid-feedback"
         ng-repeat="(validationName, validation) in input.validations"
         ng-show="showErrorMessage(validationName)">
        {{validation.message}}
    </div>


<%--    <div class="col-sm-10" ff-validations ff-logic>--%>
<%--        <div class="checkbox" ng-repeat="checkboxOption in input.checkboxes | filter: 'true' : null : visible">--%>
<%--            <label>--%>
<%--                <input type="checkbox"--%>
<%--                       name="{{input.name}}"--%>
<%--                       checklist-model="input.value"--%>
<%--                       ng-required="checkValues()"--%>
<%--                       checklist-value="checkboxOption.key"--%>
<%--                       checklist-change="makeDirty(); ffValidate()"--%>
<%--                       ng-model-options="{'allowInvalid':true}"--%>
<%--                       ng-disabled="readOnly"--%>
<%--                       ff-focus-tracker="{{input.name}}_{{checkboxOption.key}}">--%>
<%--                {{checkboxOption.value}}--%>
<%--                <span ng-init="input.value.length > 0 ? makeDirty() : ''"></span>--%>
<%--            </label>--%>
<%--        </div>--%>
<%--        <span class="help-block"--%>
<%--              ng-show="input.helptext != undefined">--%>
<%--            {{input.helptext}}--%>
<%--        </span>--%>
<%--        <span class="help-block"--%>
<%--              ng-repeat="(validationName, validation) in input.validations"--%>
<%--              ng-show="showErrorMessage(validationName)">--%>
<%--            {{validation.message}}--%>
<%--        </span>--%>
<%--    </div>--%>
<%--    <div class="clearfix"/>--%>
</div>