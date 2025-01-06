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

    <div class="form-check" ff-validations ff-logic
         ng-repeat="(radiok, radiov) in input.radios | filter: 'true' : null : visible">
        <input class="form-check-input"
               type="radio"
               id="{{input.name}}-{{radiov.key}}"
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

        <label class="form-check-label" for="{{input.name}}-{{radiov.key}}">
            {{radiov.value}}
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

</div>
