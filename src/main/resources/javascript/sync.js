// (function(){
    synchToJCustomer=function(elt){
        // console.log("window.digitalData : ",window.digitalData);
        // console.log("window.wem : ",window.wem);
        var form = elt.closest("form");
        var ctrl = form.parentElement;
        // var formName = form.name;

        var formName = form.getAttribute("name");
        var formDId = ctrl.getAttribute("form-display-id");
        var data = new FormData(form);

        var _data_={}
        for(var pair of data.entries()){
            var key = pair[0];
            var value = pair[1];
            _data_[key]=value;
        }
        _data_["form-display-id"]=formDId;

        var formEvent = window.wem.buildFormEvent(formName);
        formEvent.properties = _data_;

        window.wem.collectEvent(formEvent,
            function () {
                console.info('[_hackNextPreSync] Form Factory event successfully submitted.');
            },
            function (xhr) {
                console.error('[_hackNextPreSync] Error while collecting Form Factory event, XHR status: ' + xhr.status + ' ' + xhr.statusText);
                xhr.abort();
            }
        );
    };
// })()


