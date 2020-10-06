<!-- Textarea -->
<div class="form-group"
     ng-class="{'has-error': form[input.name].$invalid&&form[input.name].$dirty}"
     ng-show="resolveLogic()">
    <%--  remove class col-sm-2--%>
    <label class="control-label" for="{{input.name}}-id">
        {{input.label}}<span ng-if="isRequired()" ng-show="asteriskResolver()"><sup>&nbsp;<i class="fa fa-asterisk fa-sm"></i></sup></span>
    </label>
    <span role="button"
<%--          data-toggle="popover"--%>
          title="{{input.label}}"
          data-content="{{input.helptext}}"
          ng-show="input.helptext != undefined"
          id="{{input.name}}-enhanced-help"
          onclick="popoverToggle(this)">
        <i class="far fa-question-circle"></i>
    </span>

    <textarea rows="{{input.rows}}"
              id="{{input.name}}-id"
              ng-model-options="{allowInvalid:true}"
              ng-model="input.value"
              placeholder="{{input.placeholder}}"
              class="form-control {{input.inputsize}}"
              name="{{input.name}}"
              ng-required="isRequired()"
              ng-readonly="readOnly"
              ff-validations
              ff-logic
              ng-binding="input.value"
              ff-focus-tracker="{{input.name}}">
    </textarea>
<%--    <small id="{{input.name}}-help" class="form-text text-muted"--%>
<%--           ng-show="input.helptext != undefined">--%>
<%--        {{input.helptext}}--%>
<%--    </small>--%>
    <div class="invalid-feedback"
          ng-repeat="(validationName, validation) in input.validations"
          ng-show="showErrorMessage(validationName)">
        {{validation.message}}
    </div>

<%--    <div class="clearfix"/>--%>
</div>
