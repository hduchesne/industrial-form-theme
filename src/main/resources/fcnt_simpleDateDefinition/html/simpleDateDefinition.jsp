<!-- Simple date-->
<div class="form-group"
     ng-class="{'has-error': form[input.name].$invalid&&form[input.name].$dirty}"
     ng-show="resolveLogic()">
    <input type="hidden"
           onblur="synchToJCustomer(this)"
           id="{{input.name}}-id"
           name="{{input.name}}"
           ng-model="input.value"
           ng-required="isRequired()"
           ff-validations
           ng-model-options="{ allowInvalid: true, updateOn: 'default', debounce: {'default': 0} }"
           ff-logic
           ff-valid-year>

    <label class="control-label" for="{{input.name}}-id">
        {{input.label}}
        <span ng-if="isRequired()"
              ng-show="asteriskResolver()">
            <sup>&nbsp;<i class="fa fa-asterisk fa-sm"></i></sup>
        </span>
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

<%--    <div class="row"--%>
<%--    align-items-center--%>
    <div class="form-row"
         ff-focus-tracker="{{input.name}}"
         ff-ft-element-to-track='input[ng-model="date.selectedYear"], div.input-group-append button.dropdown-toggle'>

<%--        <div class="col-sm-4">--%>
        <div class="col">
            <div class="input-group input-group-sm" role="group">
                <input class="form-control {{input.inputsize}}"
                       type="text"
                       placeholder="{{input.placeholder[0]}}"
                       ng-model="date.selectedYear"
                       ng-model-options="{ allowInvalid: true, updateOn: 'default', debounce: {'default': 0} }"
                       ng-change="updateDateModel('year')"
                       ng-readonly="readOnly || input.useCurrentDate"
                       min="{{date.minYear}}"
                       max="{{date.maxYear}}"
                       parse-valid-year>
                <div class="input-group-append">
<%--                <span class="input-group-btn">--%>
                    <button class="btn btn-outline-primary dropdown-toggle {{buttonSize(input.inputsize)}}"
                            type="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            ng-disabled="readOnly || input.useCurrentDate">
<%--                        <i class="fa fa-caret-down fa-lineHeight"></i>--%>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right scrollable-menu" role="menu">
                        <a ng-repeat="year in date.years | orderBy : year : true"
                           ng-click="$event.preventDefault(); date.selectedYear=year.id; updateDateModel('year')"
                           class="dropdown-item"
                           href="#">
                            {{year.id}}
                        </a>
<%--                        <a class="dropdown-item" href="#">Another action</a>--%>
<%--                        <a class="dropdown-item" href="#">Something else here</a>--%>
<%--                        <div role="separator" class="dropdown-divider"></div>--%>
<%--                        <a class="dropdown-item" href="#">Separated link</a>--%>
                    </div>
<%--                    <ul class="dropdown-menu-right dropdown-menu scrollable-menu"--%>
<%--                        role="menu">--%>
<%--                        <li ng-repeat="year in date.years | orderBy : year : true">--%>
<%--                            <a href="" ng-click="$event.preventDefault(); date.selectedYear=year.id; updateDateModel('year')">{{year.id}}</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
                </span>

            </div>
        </div>
        </div>

        <div class="col">
            <div class="input-group" role="group">
                <input class="form-control {{input.inputsize}}"
                       name="selectMonth"
                       type="text"
                       placeholder="{{input.placeholder[1]}}"
                       ng-model="date.selectedMonth"
                       ng-readonly="true">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary dropdown-toggle {{buttonSize(input.inputsize)}} "
                            type="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            ng-disabled="readOnly || input.useCurrentDate">
                    </button>
                    <div class="dropdown-menu dropdown-menu-right scrollable-menu" role="menu">
                        <a ng-repeat="month in date.months"
                           ng-click="$event.preventDefault(); date.selectedMonth=month.id; updateDateModel('month')"
                           class="dropdown-item"
                           href="#">
                            {{month.id}}
                        </a>
                    </div>

<%--                    <ul class="dropdown-menu-right dropdown-menu scrollable-menu"--%>
<%--                        role="menu">--%>
<%--                        <li ng-repeat="month in date.months">--%>
<%--                            <a href="" ng-click="$event.preventDefault(); date.selectedMonth=month.id; updateDateModel('month')">{{month.id}}</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>

            </div>
        </div>
        </div>

        <div class="col">
            <div class="input-group" role="group">
                <input class="form-control {{input.inputsize}}"
                       name="selectDay"
                       type="text"
                       placeholder="{{input.placeholder[2]}}"
                       ng-model="date.selectedDay"
                       ng-readonly="true">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary dropdown-toggle {{buttonSize(input.inputsize)}}"
                            type="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            ng-disabled="readOnly || input.useCurrentDate">
                    </button>
                    <div class="dropdown-menu dropdown-menu-right scrollable-menu" role="menu">
                        <a ng-repeat="day in date.days"
                           ng-show="day.displayable"
                           ng-click="$event.preventDefault(); date.selectedDay=day.id; updateDateModel('day')"
                           class="dropdown-item"
                           href="#">
                            {{day.id}}
                        </a>
                    </div>

<%--                    <ul class="dropdown-menu-right dropdown-menu scrollable-menu"--%>
<%--                        role="menu">--%>
<%--                        <li ng-repeat="day in date.days" ng-show="day.displayable">--%>
<%--                            <a href="" ng-click="$event.preventDefault(); date.selectedDay=day.id; updateDateModel('day')">{{day.id}}</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
                </div>
            </div>
        </div>
    </div>

<%--    <small id="{{input.name}}-help" class="form-text text-muted"--%>
<%--           ng-show="input.helptext != undefined">--%>
<%--        {{input.helptext}}--%>
<%--    </small>--%>

<%--    <span class="help-block"--%>
<%--          ng-show="input.helptext != undefined">--%>
<%--        {{input.helptext}}--%>
<%--    </span>--%>
    <div class="invalid-feedback"
         ng-repeat="(validationName, validation) in input.validations"
         ng-show="showErrorMessage(validationName)">
        {{validation.message}}
    </div>

<%--    <span class="help-block"--%>
<%--          ng-repeat="(validationName, validation) in input.validations"--%>
<%--          ng-show="showErrorMessage(validationName)">--%>
<%--        {{validation.message}}--%>
<%--    </span>--%>
    <div class="invalid-feedback"
         ng-repeat="(errorMessageName, errorMessage) in errorMessages"
         ng-show="showErrorMessage(validationName)">
        <span ng-if="errorMessage" message-key="{{errorMessageName}}"></span>
    </div>

<%--    <span class="help-block"--%>
<%--          ng-repeat="(errorMessageName, errorMessage) in errorMessages">--%>
<%--        <span ng-if="errorMessage" message-key="{{errorMessageName}}"></span>--%>
<%--    </span>--%>
</div>