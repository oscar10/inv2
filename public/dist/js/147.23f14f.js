/*! For license information please see 147.23f14f.js.LICENSE.txt */
(window.webpackJsonp=window.webpackJsonp||[]).push([[147],{459:function(t,r,e){"use strict";e.r(r);var o=e(4),n=e.n(o);function a(t){return(a="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function i(){i=function(){return t};var t={},r=Object.prototype,e=r.hasOwnProperty,o="function"==typeof Symbol?Symbol:{},n=o.iterator||"@@iterator",s=o.asyncIterator||"@@asyncIterator",c=o.toStringTag||"@@toStringTag";function u(t,r,e){return Object.defineProperty(t,r,{value:e,enumerable:!0,configurable:!0,writable:!0}),t[r]}try{u({},"")}catch(t){u=function(t,r,e){return t[r]=e}}function l(t,r,e,o){var n=r&&r.prototype instanceof d?r:d,a=Object.create(n.prototype),i=new $(o||[]);return a._invoke=function(t,r,e){var o="suspendedStart";return function(n,a){if("executing"===o)throw new Error("Generator is already running");if("completed"===o){if("throw"===n)throw a;return k()}for(e.method=n,e.arg=a;;){var i=e.delegate;if(i){var s=C(i,e);if(s){if(s===m)continue;return s}}if("next"===e.method)e.sent=e._sent=e.arg;else if("throw"===e.method){if("suspendedStart"===o)throw o="completed",e.arg;e.dispatchException(e.arg)}else"return"===e.method&&e.abrupt("return",e.arg);o="executing";var c=f(t,r,e);if("normal"===c.type){if(o=e.done?"completed":"suspendedYield",c.arg===m)continue;return{value:c.arg,done:e.done}}"throw"===c.type&&(o="completed",e.method="throw",e.arg=c.arg)}}}(t,e,i),a}function f(t,r,e){try{return{type:"normal",arg:t.call(r,e)}}catch(t){return{type:"throw",arg:t}}}t.wrap=l;var m={};function d(){}function h(){}function v(){}var p={};u(p,n,(function(){return this}));var y=Object.getPrototypeOf,g=y&&y(y(E([])));g&&g!==r&&e.call(g,n)&&(p=g);var b=v.prototype=d.prototype=Object.create(p);function _(t){["next","throw","return"].forEach((function(r){u(t,r,(function(t){return this._invoke(r,t)}))}))}function w(t,r){var o;this._invoke=function(n,i){function s(){return new r((function(o,s){!function o(n,i,s,c){var u=f(t[n],t,i);if("throw"!==u.type){var l=u.arg,m=l.value;return m&&"object"==a(m)&&e.call(m,"__await")?r.resolve(m.__await).then((function(t){o("next",t,s,c)}),(function(t){o("throw",t,s,c)})):r.resolve(m).then((function(t){l.value=t,s(l)}),(function(t){return o("throw",t,s,c)}))}c(u.arg)}(n,i,o,s)}))}return o=o?o.then(s,s):s()}}function C(t,r){var e=t.iterator[r.method];if(void 0===e){if(r.delegate=null,"throw"===r.method){if(t.iterator.return&&(r.method="return",r.arg=void 0,C(t,r),"throw"===r.method))return m;r.method="throw",r.arg=new TypeError("The iterator does not provide a 'throw' method")}return m}var o=f(e,t.iterator,r.arg);if("throw"===o.type)return r.method="throw",r.arg=o.arg,r.delegate=null,m;var n=o.arg;return n?n.done?(r[t.resultName]=n.value,r.next=t.nextLoc,"return"!==r.method&&(r.method="next",r.arg=void 0),r.delegate=null,m):n:(r.method="throw",r.arg=new TypeError("iterator result is not an object"),r.delegate=null,m)}function x(t){var r={tryLoc:t[0]};1 in t&&(r.catchLoc=t[1]),2 in t&&(r.finallyLoc=t[2],r.afterLoc=t[3]),this.tryEntries.push(r)}function L(t){var r=t.completion||{};r.type="normal",delete r.arg,t.completion=r}function $(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(x,this),this.reset(!0)}function E(t){if(t){var r=t[n];if(r)return r.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var o=-1,a=function r(){for(;++o<t.length;)if(e.call(t,o))return r.value=t[o],r.done=!1,r;return r.value=void 0,r.done=!0,r};return a.next=a}}return{next:k}}function k(){return{value:void 0,done:!0}}return h.prototype=v,u(b,"constructor",v),u(v,"constructor",h),h.displayName=u(v,c,"GeneratorFunction"),t.isGeneratorFunction=function(t){var r="function"==typeof t&&t.constructor;return!!r&&(r===h||"GeneratorFunction"===(r.displayName||r.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,v):(t.__proto__=v,u(t,c,"GeneratorFunction")),t.prototype=Object.create(b),t},t.awrap=function(t){return{__await:t}},_(w.prototype),u(w.prototype,s,(function(){return this})),t.AsyncIterator=w,t.async=function(r,e,o,n,a){void 0===a&&(a=Promise);var i=new w(l(r,e,o,n),a);return t.isGeneratorFunction(e)?i:i.next().then((function(t){return t.done?t.value:i.next()}))},_(b),u(b,c,"Generator"),u(b,n,(function(){return this})),u(b,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var r=[];for(var e in t)r.push(e);return r.reverse(),function e(){for(;r.length;){var o=r.pop();if(o in t)return e.value=o,e.done=!1,e}return e.done=!0,e}},t.values=E,$.prototype={constructor:$,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(L),!t)for(var r in this)"t"===r.charAt(0)&&e.call(this,r)&&!isNaN(+r.slice(1))&&(this[r]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var r=this;function o(e,o){return i.type="throw",i.arg=t,r.next=e,o&&(r.method="next",r.arg=void 0),!!o}for(var n=this.tryEntries.length-1;n>=0;--n){var a=this.tryEntries[n],i=a.completion;if("root"===a.tryLoc)return o("end");if(a.tryLoc<=this.prev){var s=e.call(a,"catchLoc"),c=e.call(a,"finallyLoc");if(s&&c){if(this.prev<a.catchLoc)return o(a.catchLoc,!0);if(this.prev<a.finallyLoc)return o(a.finallyLoc)}else if(s){if(this.prev<a.catchLoc)return o(a.catchLoc,!0)}else{if(!c)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return o(a.finallyLoc)}}}},abrupt:function(t,r){for(var o=this.tryEntries.length-1;o>=0;--o){var n=this.tryEntries[o];if(n.tryLoc<=this.prev&&e.call(n,"finallyLoc")&&this.prev<n.finallyLoc){var a=n;break}}a&&("break"===t||"continue"===t)&&a.tryLoc<=r&&r<=a.finallyLoc&&(a=null);var i=a?a.completion:{};return i.type=t,i.arg=r,a?(this.method="next",this.next=a.finallyLoc,m):this.complete(i)},complete:function(t,r){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&r&&(this.next=r),m},finish:function(t){for(var r=this.tryEntries.length-1;r>=0;--r){var e=this.tryEntries[r];if(e.finallyLoc===t)return this.complete(e.completion,e.afterLoc),L(e),m}},catch:function(t){for(var r=this.tryEntries.length-1;r>=0;--r){var e=this.tryEntries[r];if(e.tryLoc===t){var o=e.completion;if("throw"===o.type){var n=o.arg;L(e)}return n}}throw new Error("illegal catch attempt")},delegateYield:function(t,r,e){return this.delegate={iterator:E(t),resultName:r,nextLoc:e},"next"===this.method&&(this.arg=void 0),m}},t}function s(t,r,e,o,n,a,i){try{var s=t[a](i),c=s.value}catch(t){return void e(t)}s.done?r(c):Promise.resolve(c).then(o,n)}var c={middleware:["auth","check-permissions"],metaInfo:function(){return{title:this.$t("setup.brands.create.page_title")}},data:function(){return{breadcrumbsCurrent:"setup.brands.create.breadcrumbs_current",breadcrumbs:[{name:"setup.brands.create.breadcrumbs_first",url:"home"},{name:"setup.brands.create.breadcrumbs_second",url:"setup.index"},{name:"setup.brands.create.breadcrumbs_third",url:"brands.index"},{name:"setup.brands.create.breadcrumbs_active",url:""}],url:null,form:new n.a({name:"",shortCode:"",image:"",note:"",status:1})}},methods:{onFileChange:function(t){var r=this,e=t.target.files[0],o=new FileReader;e.size<2111775&&("image/jpeg"===e.type||"image/png"===e.type||"image/gif"===e.type)?(o.onloadend=function(t){r.form.image=o.result},o.readAsDataURL(e),this.url=URL.createObjectURL(e)):Swal.fire(this.$t("common.error"),this.$t("common.image_error"),"error")},saveBrand:function(){var t,r=this;return(t=i().mark((function t(){return i().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,r.form.post(window.location.origin+"/api/brands").then((function(){toast.fire({type:"success",title:r.$t("setup.brands.create.success_msg")}),r.$router.push({name:"brands.index"})})).catch((function(){toast.fire({type:"error",title:r.$t("common.error")})}));case 2:case"end":return t.stop()}}),t)})),function(){var r=this,e=arguments;return new Promise((function(o,n){var a=t.apply(r,e);function i(t){s(a,o,n,i,c,"next",t)}function c(t){s(a,o,n,i,c,"throw",t)}i(void 0)}))})()}}},u=e(1),l=Object(u.a)(c,(function(){var t=this,r=t.$createElement,e=t._self._c||r;return e("div",[e("breadcrumbs",{attrs:{items:t.breadcrumbs,current:t.breadcrumbsCurrent}}),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-12"},[e("div",{staticClass:"card"},[e("div",{staticClass:"card-header"},[e("h3",{staticClass:"card-title"},[t._v("\n            "+t._s(t.$t("setup.brands.create.form_title"))+"\n          ")]),t._v(" "),e("router-link",{staticClass:"btn btn-dark float-right",attrs:{to:{name:"brands.index"}}},[e("i",{staticClass:"fas fa-long-arrow-alt-left"}),t._v(" "+t._s(t.$t("common.back"))+"\n          ")])],1),t._v(" "),e("form",{attrs:{role:"form",enctype:"multipart/form-data"},on:{submit:function(r){return r.preventDefault(),t.saveBrand.apply(null,arguments)},keydown:function(r){return t.form.onKeydown(r)}}},[e("div",{staticClass:"card-body"},[e("div",{staticClass:"row"},[e("div",{staticClass:"form-group col-md-6"},[e("label",{attrs:{for:"name"}},[t._v(t._s(t.$t("setup.brands.common.brand_name"))+"\n                  "),e("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.name,expression:"form.name"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("name")},attrs:{id:"name",type:"text",name:"name",placeholder:t.$t("setup.brands.common.brand_name_placeholder")},domProps:{value:t.form.name},on:{input:function(r){r.target.composing||t.$set(t.form,"name",r.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"name"}})],1),t._v(" "),e("div",{staticClass:"form-group col-md-6"},[e("label",{attrs:{for:"shortCode"}},[t._v(t._s(t.$t("setup.common.sort_code"))+"\n                  "),e("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.shortCode,expression:"form.shortCode"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("shortCode")},attrs:{id:"shortCode",type:"text",name:"shortCode",placeholder:t.$t("setup.common.sort_code_placeholder")},domProps:{value:t.form.shortCode},on:{input:function(r){r.target.composing||t.$set(t.form,"shortCode",r.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"shortCode"}})],1)]),t._v(" "),e("div",{staticClass:"form-group"},[e("label",{attrs:{for:"note"}},[t._v(t._s(t.$t("common.note")))]),t._v(" "),e("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.note,expression:"form.note"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("note")},attrs:{id:"note",placeholder:t.$t("common.note_placeholder")},domProps:{value:t.form.note},on:{input:function(r){r.target.composing||t.$set(t.form,"note",r.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"note"}})],1),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"form-group col-md-6"},[e("label",{attrs:{for:"status"}},[t._v(t._s(t.$t("common.status")))]),t._v(" "),e("select",{directives:[{name:"model",rawName:"v-model",value:t.form.status,expression:"form.status"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("status")},attrs:{id:"status"},on:{change:function(r){var e=Array.prototype.filter.call(r.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"status",r.target.multiple?e:e[0])}}},[e("option",{attrs:{value:"1"}},[t._v(t._s(t.$t("common.active")))]),t._v(" "),e("option",{attrs:{value:"0"}},[t._v(t._s(t.$t("common.in_active")))])]),t._v(" "),e("has-error",{attrs:{form:t.form,field:"status"}})],1),t._v(" "),e("div",{staticClass:"form-group col-md-6"},[e("label",{attrs:{for:"image"}},[t._v(t._s(t.$t("common.image")))]),t._v(" "),e("div",{staticClass:"custom-file"},[e("input",{staticClass:"custom-file-input",class:{"is-invalid":t.form.errors.has("image")},attrs:{id:"image",type:"file",name:"image"},on:{change:t.onFileChange}}),t._v(" "),e("label",{staticClass:"custom-file-label",attrs:{for:"image"}},[t._v(t._s(t.$t("common.choose_file")))])]),t._v(" "),e("has-error",{attrs:{form:t.form,field:"image"}}),t._v(" "),e("div",{staticClass:"bg-light mt-4 w-25"},[t.url?e("img",{staticClass:"img-fluid",attrs:{src:t.url,alt:t.$t("common.image_alt")}}):t._e()])],1)])]),t._v(" "),e("div",{staticClass:"card-footer"},[e("v-button",{staticClass:"btn btn-primary",attrs:{loading:t.form.busy}},[e("i",{staticClass:"fas fa-save"}),t._v(" "+t._s(t.$t("common.save"))+"\n            ")]),t._v(" "),e("button",{staticClass:"btn btn-secondary float-right",attrs:{type:"reset"},on:{click:function(r){return t.form.reset()}}},[e("i",{staticClass:"fas fa-power-off"}),t._v(" "+t._s(t.$t("common.reset"))+"\n            ")])],1)])])])])],1)}),[],!1,null,"2a4eda0f",null);r.default=l.exports}}]);