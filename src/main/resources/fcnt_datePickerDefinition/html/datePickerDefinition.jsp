<!-- Date picker-->
<div class="form-group"
     ng-class="{'has-error': form[input.name].$invalid&&form[input.name].$dirty}"
     ng-show="resolveLogic()">
    <%--Live mode--%>
    <input ng-if="!readOnly"
           id="{{input.name}}-id"
           type="hidden"
           name="{{input.name}}"
           ng-model="input.value"
           value="{{input.value}}"
           ng-required="isRequired()"
           ff-validations
           ff-logic
           ff-date-picker-validator>

    <%--Builder mode--%>
    <input ng-if="readOnly"
           type="hidden"
           name="{{input.name}}"
           ng-model="input.value"
           value="{{input.builderValue}}"
           ff-validations
           ff-logic>

    <label class="control-label" for="{{input.name}}-id">
        {{input.label}}
        <span ng-if="isRequired()"
              ng-show="asteriskResolver()">
            <sup>&nbsp;<i class="fa fa-asterisk fa-sm"></i></sup>
        </span>
    </label>

<%--    ng-class="{'left15':!readOnly}"--%>
    <div>
        <ff-date-picker read-only="{{dpic.readOnly()}}"
                        date-picker-size="input.datepickersize"
                        is-disabled="{{dpic.readOnly()}}"
                        min-date-placeholder="input.placeholder"
                        date-picker-options="datePicker.datePickerOptions"
                        format="{{input.format}}"
                        min-value="input.value"
                        parser-separator
                        ff-focus-tracker="{{input.name}}"
                        ff-ft-element-to-track="p.input-group.datepicker-popup-position > input">
        </ff-date-picker>

        <small id="{{input.name}}-help" class="form-text text-muted"
               ng-show="input.helptext != undefined">
            {{input.helptext}}
        </small>

        <div class="invalid-feedback"
             ng-repeat="(validationName, validation) in input.validations"
             ng-show="showErrorMessage(validationName)">
            {{validation.message}}
        </div>

        <div class="invalid-feedback"
             ng-repeat="errorMessage in errorMessages"
             ng-if="errorMessage.active">
            {{errorMessage.message}}
        </div>
    </div>

</div>