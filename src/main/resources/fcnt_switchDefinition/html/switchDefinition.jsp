<div class="form-group"
     ng-show="resolveLogic()">
<%--    <legend class="control-label">--%>
<%--        {{input.label}}--%>
<%--    </legend>--%>

    <div class="custom-control custom-switch">
<%--        <input type="checkbox" class="custom-control-input" id="customSwitch1">--%>
        <input type="checkbox"
               class="custom-control-input"
               id="{{input.name}}-id"
               name="{{input.name}}"
               ng-model="input.value"
               ng-readonly="readOnly"
               ff-validations
               ff-logic>
        <label class="custom-control-label" for="{{input.name}}-id">{{input.label}}</label>
        <span role="button"
<%--              data-toggle="popover"--%>
              title="{{input.label}}"
              data-content="{{input.helptext}}"
              ng-show="input.helptext != undefined"
              id="{{input.name}}-enhanced-help"
              onclick="popoverToggle(this)">
            <i class="far fa-question-circle"></i>
        </span>
    </div>


<%--        <span class="switch {{input.inputsize}}"--%>
<%--              ng-click="readOnly ? input.value : input.value =! input.value"--%>
<%--              ng-class="{'{{input.color}}' : input.value, 'disabled' : readOnly}"--%>
<%--              ff-focus-tracker="{{input.name}}" ff-ft-element-to-track="span.switch-text">--%>
<%--            <small></small>--%>
<%--            <input style="display:none;"--%>
<%--                   type="checkbox"--%>
<%--                   id="{{input.name}}-id"--%>
<%--                   name="{{input.name}}"--%>
<%--                   ng-model="input.value"--%>
<%--                   ng-readonly="readOnly"--%>
<%--                   ff-validations--%>
<%--                   ff-logic>--%>
<%--            <span class="switch-text" ng-show="input.displayText">--%>
<%--                <span class="on">{{input.textOn}}</span>--%>
<%--                <span class="off">{{input.textOff}}</span>--%>
<%--            </span>--%>
<%--        </span>--%>

<%--    <small id="{{input.name}}-help" class="form-text text-muted"--%>
<%--           ng-show="input.helptext != undefined">--%>
<%--        {{input.helptext}}--%>
<%--    </small>--%>

</div>