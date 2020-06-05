// (function(){
//TODO create a specific custom event instead of form submit
//otherwise jExp behavior and stats are corrupted
    synchToJCustomer=function(elt){
        return;
        // if(!window.wem) return;
        //
        // // console.log("window.digitalData : ",window.digitalData);
        // // console.log("window.wem : ",window.wem);
        // var form = elt.closest("form");
        // var ctrl = form.parentElement;
        //
        // var formName = form.getAttribute("name");
        // var formDId = ctrl.getAttribute("form-display-id");
        // var data = new FormData(form);
        //
        // var _data_={}
        // //Note, do I need to return all data or only the one updated?
        // for(var pair of data.entries()){
        //     var key = pair[0];
        //     var value = pair[1];
        //     //To be compliant with the default behaviour
        //     //data cannot be empty
        //     if(value)
        //         _data_[key]=value;
        // }
        // _data_["form-display-id"]=formDId;
        //
        // //TODO review this part
        // var formEvent = window.wem.buildFormEvent(formName);
        // formEvent.properties = _data_;
        //
        // window.wem.collectEvent(formEvent,
        //     function () {
        //         console.info('[synchToJCustomer] Form Factory event successfully submitted.');
        //     },
        //     function (xhr) {
        //         console.error('[synchToJCustomer] Error while collecting Form Factory event, XHR status: ' + xhr.status + ' ' + xhr.statusText);
        //         xhr.abort();
        //     }
        // );
    };
// })()


