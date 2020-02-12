
<%--<div class="row">--%>
<%--    <div class="col-12 col-lg-8 ml-auto mr-auto mb-4">--%>
        <div class="multisteps-form__progress ml-auto mr-auto mb-4">
            <button class="multisteps-form__progress-btn"
                    ng-repeat="step in form.steps"
                    ng-class="{'js-active': currentStep >= $index}"
                    type="button"
                    title="User Info">
                {{ step.label }}
            </button>
        </div>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="row justify-content-center mx-auto step-container">--%>
<%--    <div class="col-md-3 col-4 step-box"--%>
<%--         ng-repeat="step in form.steps"--%>
<%--         ng-class="{'active': currentStep === $index}">--%>
<%--        <h6 class="step-title-0">--%>
<%--            <span class="fa fa-circle"></span>--%>
<%--            <span class="break-line"></span>--%>
<%--            <span class="step-title">{{ step.label }}</span>--%>
<%--        </h6>--%>
<%--    </div>--%>
<%--</div>--%>



<%--<div class="row">--%>
<%--    <div class="col-md-12 text-center">--%>
<%--        <div class="progresscrum">--%>
<%--            <span--%>
<%--                    ng-repeat="step in form.steps"--%>
<%--                    ng-class="{'active': currentStep === $index}">--%>
<%--                {{ step.label }}--%>
<%--            </span>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>