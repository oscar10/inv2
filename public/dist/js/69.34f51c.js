/*! For license information please see 69.34f51c.js.LICENSE.txt */
(window.webpackJsonp=window.webpackJsonp||[]).push([[69],{374:function(t,e,r){"use strict";r.r(e);var o=r(4),n=r.n(o),a=r(3);function i(t){return(i="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function s(){s=function(){return t};var t={},e=Object.prototype,r=e.hasOwnProperty,o="function"==typeof Symbol?Symbol:{},n=o.iterator||"@@iterator",a=o.asyncIterator||"@@asyncIterator",c=o.toStringTag||"@@toStringTag";function l(t,e,r){return Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{l({},"")}catch(t){l=function(t,e,r){return t[e]=r}}function u(t,e,r,o){var n=e&&e.prototype instanceof v?e:v,a=Object.create(n.prototype),i=new $(o||[]);return a._invoke=function(t,e,r){var o="suspendedStart";return function(n,a){if("executing"===o)throw new Error("Generator is already running");if("completed"===o){if("throw"===n)throw a;return L()}for(r.method=n,r.arg=a;;){var i=r.delegate;if(i){var s=x(i,r);if(s){if(s===m)continue;return s}}if("next"===r.method)r.sent=r._sent=r.arg;else if("throw"===r.method){if("suspendedStart"===o)throw o="completed",r.arg;r.dispatchException(r.arg)}else"return"===r.method&&r.abrupt("return",r.arg);o="executing";var c=f(t,e,r);if("normal"===c.type){if(o=r.done?"completed":"suspendedYield",c.arg===m)continue;return{value:c.arg,done:r.done}}"throw"===c.type&&(o="completed",r.method="throw",r.arg=c.arg)}}}(t,r,i),a}function f(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(t){return{type:"throw",arg:t}}}t.wrap=u;var m={};function v(){}function p(){}function d(){}var h={};l(h,n,(function(){return this}));var y=Object.getPrototypeOf,b=y&&y(y(k([])));b&&b!==e&&r.call(b,n)&&(h=b);var g=d.prototype=v.prototype=Object.create(h);function _(t){["next","throw","return"].forEach((function(e){l(t,e,(function(t){return this._invoke(e,t)}))}))}function w(t,e){var o;this._invoke=function(n,a){function s(){return new e((function(o,s){!function o(n,a,s,c){var l=f(t[n],t,a);if("throw"!==l.type){var u=l.arg,m=u.value;return m&&"object"==i(m)&&r.call(m,"__await")?e.resolve(m.__await).then((function(t){o("next",t,s,c)}),(function(t){o("throw",t,s,c)})):e.resolve(m).then((function(t){u.value=t,s(u)}),(function(t){return o("throw",t,s,c)}))}c(l.arg)}(n,a,o,s)}))}return o=o?o.then(s,s):s()}}function x(t,e){var r=t.iterator[e.method];if(void 0===r){if(e.delegate=null,"throw"===e.method){if(t.iterator.return&&(e.method="return",e.arg=void 0,x(t,e),"throw"===e.method))return m;e.method="throw",e.arg=new TypeError("The iterator does not provide a 'throw' method")}return m}var o=f(r,t.iterator,e.arg);if("throw"===o.type)return e.method="throw",e.arg=o.arg,e.delegate=null,m;var n=o.arg;return n?n.done?(e[t.resultName]=n.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=void 0),e.delegate=null,m):n:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,m)}function C(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function O(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function $(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(C,this),this.reset(!0)}function k(t){if(t){var e=t[n];if(e)return e.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var o=-1,a=function e(){for(;++o<t.length;)if(r.call(t,o))return e.value=t[o],e.done=!1,e;return e.value=void 0,e.done=!0,e};return a.next=a}}return{next:L}}function L(){return{value:void 0,done:!0}}return p.prototype=d,l(g,"constructor",d),l(d,"constructor",p),p.displayName=l(d,c,"GeneratorFunction"),t.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===p||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,d):(t.__proto__=d,l(t,c,"GeneratorFunction")),t.prototype=Object.create(g),t},t.awrap=function(t){return{__await:t}},_(w.prototype),l(w.prototype,a,(function(){return this})),t.AsyncIterator=w,t.async=function(e,r,o,n,a){void 0===a&&(a=Promise);var i=new w(u(e,r,o,n),a);return t.isGeneratorFunction(r)?i:i.next().then((function(t){return t.done?t.value:i.next()}))},_(g),l(g,c,"Generator"),l(g,n,(function(){return this})),l(g,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var e=[];for(var r in t)e.push(r);return e.reverse(),function r(){for(;e.length;){var o=e.pop();if(o in t)return r.value=o,r.done=!1,r}return r.done=!0,r}},t.values=k,$.prototype={constructor:$,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(O),!t)for(var e in this)"t"===e.charAt(0)&&r.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function o(r,o){return i.type="throw",i.arg=t,e.next=r,o&&(e.method="next",e.arg=void 0),!!o}for(var n=this.tryEntries.length-1;n>=0;--n){var a=this.tryEntries[n],i=a.completion;if("root"===a.tryLoc)return o("end");if(a.tryLoc<=this.prev){var s=r.call(a,"catchLoc"),c=r.call(a,"finallyLoc");if(s&&c){if(this.prev<a.catchLoc)return o(a.catchLoc,!0);if(this.prev<a.finallyLoc)return o(a.finallyLoc)}else if(s){if(this.prev<a.catchLoc)return o(a.catchLoc,!0)}else{if(!c)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return o(a.finallyLoc)}}}},abrupt:function(t,e){for(var o=this.tryEntries.length-1;o>=0;--o){var n=this.tryEntries[o];if(n.tryLoc<=this.prev&&r.call(n,"finallyLoc")&&this.prev<n.finallyLoc){var a=n;break}}a&&("break"===t||"continue"===t)&&a.tryLoc<=e&&e<=a.finallyLoc&&(a=null);var i=a?a.completion:{};return i.type=t,i.arg=e,a?(this.method="next",this.next=a.finallyLoc,m):this.complete(i)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),m},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),O(r),m}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var o=r.completion;if("throw"===o.type){var n=o.arg;O(r)}return n}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,r){return this.delegate={iterator:k(t),resultName:e,nextLoc:r},"next"===this.method&&(this.arg=void 0),m}},t}function c(t,e,r,o,n,a,i){try{var s=t[a](i),c=s.value}catch(t){return void r(t)}s.done?e(c):Promise.resolve(c).then(o,n)}function l(t){return function(){var e=this,r=arguments;return new Promise((function(o,n){var a=t.apply(e,r);function i(t){c(a,o,n,i,s,"next",t)}function s(t){c(a,o,n,i,s,"throw",t)}i(void 0)}))}}function u(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(t);e&&(o=o.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,o)}return r}function f(t,e,r){return e in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}var m={middleware:["auth","check-permissions"],metaInfo:function(){return{title:this.$t("cashbook.balances.create.page_title")}},data:function(){return{breadcrumbsCurrent:"cashbook.balances.create.breadcrumbs_current",breadcrumbs:[{name:"cashbook.balances.create.breadcrumbs_first",url:"home"},{name:"cashbook.balances.create.breadcrumbs_second",url:""},{name:"cashbook.balances.create.breadcrumbs_third",url:"balances.index"},{name:"cashbook.balances.create.breadcrumbs_active",url:""}],form:new n.a({account:null,type:1,amount:"",date:(new Date).toISOString().slice(0,10),note:"",status:1}),loading:!0}},computed:function(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?u(Object(r),!0).forEach((function(e){f(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):u(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}({},Object(a.b)("operations",["items","appInfo"])),created:function(){this.getAccounts()},methods:{getAccounts:function(){var t=this;return l(s().mark((function e(){var r;return s().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$store.dispatch("operations/allData",{path:"/api/all-accounts"});case 2:t.items&&t.items.length>0&&(r=t.appInfo.defaultAccountSlug,t.form.account=t.items.find((function(t){return t.slug==r})));case 3:case"end":return e.stop()}}),e)})))()},saveAdjustment:function(){var t=this;return l(s().mark((function e(){return s().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.form.post(window.location.origin+"/api/balances").then((function(){toast.fire({type:"success",title:t.$t("cashbook.balances.create.success_msg")}),t.$router.push({name:"balances.index"})})).catch((function(){toast.fire({type:"error",title:t.$t("common.error_msg")})}));case 2:case"end":return e.stop()}}),e)})))()}}},v=r(1),p=Object(v.a)(m,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("breadcrumbs",{attrs:{items:t.breadcrumbs,current:t.breadcrumbsCurrent}}),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-12"},[r("div",{staticClass:"card"},[r("div",{staticClass:"card-header"},[r("h3",{staticClass:"card-title"},[t._v("\n            "+t._s(t.$t("cashbook.balances.create.form_title"))+"\n          ")]),t._v(" "),r("router-link",{staticClass:"btn btn-dark float-right",attrs:{to:{name:"balances.index"}}},[r("i",{staticClass:"fas fa-long-arrow-alt-left"}),t._v(" "+t._s(t.$t("common.back"))+"\n          ")])],1),t._v(" "),r("form",{attrs:{role:"form"},on:{submit:function(e){return e.preventDefault(),t.saveAdjustment.apply(null,arguments)},keydown:function(e){return t.form.onKeydown(e)}}},[r("div",{staticClass:"card-body"},[t.items?r("div",{staticClass:"row"},[r("div",{staticClass:"form-group col-md-6"},[r("label",{attrs:{for:"account"}},[t._v(t._s(t.$t("common.account"))+"\n                  "),r("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),r("v-select",{class:{"is-invalid":t.form.errors.has("account")},attrs:{options:t.items,label:"label",name:"account",placeholder:t.$t("common.account_placeholder")},model:{value:t.form.account,callback:function(e){t.$set(t.form,"account",e)},expression:"form.account"}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"account"}})],1),t._v(" "),r("div",{staticClass:"form-group col-md-6"},[r("label",{attrs:{for:"type"}},[t._v(t._s(t.$t("common.type")))]),t._v(" "),r("select",{directives:[{name:"model",rawName:"v-model",value:t.form.type,expression:"form.type"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("type")},attrs:{id:"type"},on:{change:function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"type",e.target.multiple?r:r[0])}}},[r("option",{attrs:{value:"1"}},[t._v("\n                    "+t._s(t.$t("common.add_balance"))+"\n                  ")]),t._v(" "),r("option",{attrs:{value:"0"}},[t._v("\n                    "+t._s(t.$t("common.remove_balance"))+"\n                  ")])]),t._v(" "),r("has-error",{attrs:{form:t.form,field:"type"}})],1)]):t._e(),t._v(" "),t.form.account?r("div",{staticClass:"row"},[r("div",{staticClass:"form-group col-md-6"},[r("label",{attrs:{for:"availableAmount"}},[t._v(t._s(t.$t("common.available_balance")))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.account.availableBalance,expression:"form.account.availableBalance"}],staticClass:"form-control",attrs:{id:"availableAmount",type:"number",step:"any",name:"availableAmount",readonly:""},domProps:{value:t.form.account.availableBalance},on:{input:function(e){e.target.composing||t.$set(t.form.account,"availableBalance",e.target.value)}}})]),t._v(" "),r("div",{staticClass:"form-group col-md-6"},[r("label",{attrs:{for:"amount"}},[t._v(t._s(t.$t("common.amount"))+"\n                  "),r("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.amount,expression:"form.amount"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("amount")},attrs:{id:"amount",type:"number",step:"any",name:"amount",placeholder:t.$t("common.amount_placeholder"),max:0==t.form.type?t.form.account.availableBalance:""},domProps:{value:t.form.amount},on:{input:function(e){e.target.composing||t.$set(t.form,"amount",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"amount"}})],1)]):t._e(),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"form-group col-md-6"},[r("label",{attrs:{for:"date"}},[t._v(t._s(t.$t("common.date")))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.date,expression:"form.date"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("date")},attrs:{id:"date",type:"date",name:"date"},domProps:{value:t.form.date},on:{input:function(e){e.target.composing||t.$set(t.form,"date",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"date"}})],1),t._v(" "),r("div",{staticClass:"form-group col-md-6"},[r("label",{attrs:{for:"status"}},[t._v(t._s(t.$t("common.status")))]),t._v(" "),r("select",{directives:[{name:"model",rawName:"v-model",value:t.form.status,expression:"form.status"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("status")},attrs:{id:"status"},on:{change:function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"status",e.target.multiple?r:r[0])}}},[r("option",{attrs:{value:"1"}},[t._v("\n                    "+t._s(t.$t("common.active"))+"\n                  ")]),t._v(" "),r("option",{attrs:{value:"0"}},[t._v("\n                    "+t._s(t.$t("common.in_active"))+"\n                  ")])]),t._v(" "),r("has-error",{attrs:{form:t.form,field:"status"}})],1)]),t._v(" "),r("div",{staticClass:"form-group"},[r("label",{attrs:{for:"note"}},[t._v(t._s(t.$t("common.note")))]),t._v(" "),r("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.note,expression:"form.note"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("note")},attrs:{id:"note",placeholder:t.$t("common.note_placeholder")},domProps:{value:t.form.note},on:{input:function(e){e.target.composing||t.$set(t.form,"note",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"note"}})],1)]),t._v(" "),r("div",{staticClass:"card-footer"},[r("v-button",{staticClass:"btn btn-primary",attrs:{loading:t.form.busy}},[r("i",{staticClass:"fas fa-save"}),t._v(" "+t._s(t.$t("common.save"))+"\n            ")]),t._v(" "),r("button",{staticClass:"btn btn-secondary float-right",attrs:{type:"reset"},on:{click:function(e){return t.form.reset()}}},[r("i",{staticClass:"fas fa-power-off"}),t._v(" "+t._s(t.$t("common.reset"))+"\n            ")])],1)])])])])],1)}),[],!1,null,"5608a337",null);e.default=p.exports}}]);