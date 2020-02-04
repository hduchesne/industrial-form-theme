<div class="row justify-content-center mx-auto step-container">
    <div class="col-md-3 col-4 step-box"
         ng-repeat="step in form.steps"
         ng-class="{'active': currentStep === $index}">
        <h6 class="step-title-0">
            <span class="fa fa-circle"></span>
            <span class="break-line"></span>
            <span class="step-title">{{ step.label }}</span>
        </h6>
    </div>
</div>



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