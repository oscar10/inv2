/*! For license information please see 56.b71e27.js.LICENSE.txt */
(window.webpackJsonp=window.webpackJsonp||[]).push([[56],{362:function(t,e,r){"use strict";r.r(e);var n=r(8),a=r.n(n);function o(t){return(o="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function i(){i=function(){return t};var t={},e=Object.prototype,r=e.hasOwnProperty,n="function"==typeof Symbol?Symbol:{},a=n.iterator||"@@iterator",s=n.asyncIterator||"@@asyncIterator",c=n.toStringTag||"@@toStringTag";function l(t,e,r){return Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{l({},"")}catch(t){l=function(t,e,r){return t[e]=r}}function u(t,e,r,n){var a=e&&e.prototype instanceof d?e:d,o=Object.create(a.prototype),i=new L(n||[]);return o._invoke=function(t,e,r){var n="suspendedStart";return function(a,o){if("executing"===n)throw new Error("Generator is already running");if("completed"===n){if("throw"===a)throw o;return $()}for(r.method=a,r.arg=o;;){var i=r.delegate;if(i){var s=x(i,r);if(s){if(s===f)continue;return s}}if("next"===r.method)r.sent=r._sent=r.arg;else if("throw"===r.method){if("suspendedStart"===n)throw n="completed",r.arg;r.dispatchException(r.arg)}else"return"===r.method&&r.abrupt("return",r.arg);n="executing";var c=v(t,e,r);if("normal"===c.type){if(n=r.done?"completed":"suspendedYield",c.arg===f)continue;return{value:c.arg,done:r.done}}"throw"===c.type&&(n="completed",r.method="throw",r.arg=c.arg)}}}(t,r,i),o}function v(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(t){return{type:"throw",arg:t}}}t.wrap=u;var f={};function d(){}function h(){}function p(){}var m={};l(m,a,(function(){return this}));var _=Object.getPrototypeOf,y=_&&_(_(E([])));y&&y!==e&&r.call(y,a)&&(m=y);var g=p.prototype=d.prototype=Object.create(m);function w(t){["next","throw","return"].forEach((function(e){l(t,e,(function(t){return this._invoke(e,t)}))}))}function b(t,e){var n;this._invoke=function(a,i){function s(){return new e((function(n,s){!function n(a,i,s,c){var l=v(t[a],t,i);if("throw"!==l.type){var u=l.arg,f=u.value;return f&&"object"==o(f)&&r.call(f,"__await")?e.resolve(f.__await).then((function(t){n("next",t,s,c)}),(function(t){n("throw",t,s,c)})):e.resolve(f).then((function(t){u.value=t,s(u)}),(function(t){return n("throw",t,s,c)}))}c(l.arg)}(a,i,n,s)}))}return n=n?n.then(s,s):s()}}function x(t,e){var r=t.iterator[e.method];if(void 0===r){if(e.delegate=null,"throw"===e.method){if(t.iterator.return&&(e.method="return",e.arg=void 0,x(t,e),"throw"===e.method))return f;e.method="throw",e.arg=new TypeError("The iterator does not provide a 'throw' method")}return f}var n=v(r,t.iterator,e.arg);if("throw"===n.type)return e.method="throw",e.arg=n.arg,e.delegate=null,f;var a=n.arg;return a?a.done?(e[t.resultName]=a.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=void 0),e.delegate=null,f):a:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,f)}function D(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function C(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function L(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(D,this),this.reset(!0)}function E(t){if(t){var e=t[a];if(e)return e.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var n=-1,o=function e(){for(;++n<t.length;)if(r.call(t,n))return e.value=t[n],e.done=!1,e;return e.value=void 0,e.done=!0,e};return o.next=o}}return{next:$}}function $(){return{value:void 0,done:!0}}return h.prototype=p,l(g,"constructor",p),l(p,"constructor",h),h.displayName=l(p,c,"GeneratorFunction"),t.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===h||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,p):(t.__proto__=p,l(t,c,"GeneratorFunction")),t.prototype=Object.create(g),t},t.awrap=function(t){return{__await:t}},w(b.prototype),l(b.prototype,s,(function(){return this})),t.AsyncIterator=b,t.async=function(e,r,n,a,o){void 0===o&&(o=Promise);var i=new b(u(e,r,n,a),o);return t.isGeneratorFunction(r)?i:i.next().then((function(t){return t.done?t.value:i.next()}))},w(g),l(g,c,"Generator"),l(g,a,(function(){return this})),l(g,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var e=[];for(var r in t)e.push(r);return e.reverse(),function r(){for(;e.length;){var n=e.pop();if(n in t)return r.value=n,r.done=!1,r}return r.done=!0,r}},t.values=E,L.prototype={constructor:L,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(C),!t)for(var e in this)"t"===e.charAt(0)&&r.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function n(r,n){return i.type="throw",i.arg=t,e.next=r,n&&(e.method="next",e.arg=void 0),!!n}for(var a=this.tryEntries.length-1;a>=0;--a){var o=this.tryEntries[a],i=o.completion;if("root"===o.tryLoc)return n("end");if(o.tryLoc<=this.prev){var s=r.call(o,"catchLoc"),c=r.call(o,"finallyLoc");if(s&&c){if(this.prev<o.catchLoc)return n(o.catchLoc,!0);if(this.prev<o.finallyLoc)return n(o.finallyLoc)}else if(s){if(this.prev<o.catchLoc)return n(o.catchLoc,!0)}else{if(!c)throw new Error("try statement without catch or finally");if(this.prev<o.finallyLoc)return n(o.finallyLoc)}}}},abrupt:function(t,e){for(var n=this.tryEntries.length-1;n>=0;--n){var a=this.tryEntries[n];if(a.tryLoc<=this.prev&&r.call(a,"finallyLoc")&&this.prev<a.finallyLoc){var o=a;break}}o&&("break"===t||"continue"===t)&&o.tryLoc<=e&&e<=o.finallyLoc&&(o=null);var i=o?o.completion:{};return i.type=t,i.arg=e,o?(this.method="next",this.next=o.finallyLoc,f):this.complete(i)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),f},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),C(r),f}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var n=r.completion;if("throw"===n.type){var a=n.arg;C(r)}return a}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,r){return this.delegate={iterator:E(t),resultName:e,nextLoc:r},"next"===this.method&&(this.arg=void 0),f}},t}function s(t,e,r,n,a,o,i){try{var s=t[o](i),c=s.value}catch(t){return void r(t)}s.done?e(c):Promise.resolve(c).then(n,a)}var c={middleware:["auth","check-permissions"],metaInfo:function(){return{title:this.$t("assets.list.view.page_title")}},components:{Modal:r(22).a},data:function(){return{breadcrumbsCurrent:"assets.list.view.breadcrumbs_current",breadcrumbs:[{name:"assets.list.view.breadcrumbs_first",url:"home"},{name:"assets.list.view.breadcrumbs_second",url:"assets.index"},{name:"assets.list.view.breadcrumbs_active",url:""}],url:null,showModal:!1,allData:""}},created:function(){this.getAsset()},methods:{getAsset:function(){var t,e=this;return(t=i().mark((function t(){var r,n;return i().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,a.a.get(window.location.origin+"/api/assets/"+e.$route.params.slug);case 2:r=t.sent,n=r.data,e.allData=n.data;case 5:case"end":return t.stop()}}),t)})),function(){var e=this,r=arguments;return new Promise((function(n,a){var o=t.apply(e,r);function i(t){s(o,n,a,i,c,"next",t)}function c(t){s(o,n,a,i,c,"throw",t)}i(void 0)}))})()},printWindow:function(){window.print()}}},l=r(1),u=Object(l.a)(c,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("breadcrumbs",{attrs:{items:t.breadcrumbs,current:t.breadcrumbsCurrent}}),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-12"},[r("div",{staticClass:"invoice p-3 mb-3"},[r("div",{staticClass:"row invoice-info"},[r("div",{staticClass:"col-sm-4 invoice-col"},[r("CompanyInfo")],1),t._v(" "),t.allData.type?r("div",{staticClass:"col-sm-6 offset-sm-2 invoice-col float-right text-md-right"},[r("h5",[t._v(t._s(t.$t("assets.list.view.page_title")))]),t._v(" "),r("strong",[t._v(t._s(t.$t("assets.common.asset_name"))+":")]),t._v("\n            "+t._s(t.allData.name)),r("br"),t._v(" "),r("strong",[t._v(t._s(t.$t("assets.common.asset_type"))+":")]),t._v("\n            "+t._s(t.allData.type.name)),r("br")]):t._e()]),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-12"},[r("div",{staticClass:"table-responsive table-custom"},[r("table",{staticClass:"table"},[r("thead",[r("tr",[r("th",[t._v(t._s(t.$t("common.preview")))]),t._v(" "),r("th",[t._v(t._s(t.$t("assets.common.added_date")))]),t._v(" "),r("th",[t._v(t._s(t.$t("assets.common.asset_cost")))]),t._v(" "),t.allData.depreciation?r("th",[t._v("\n                      "+t._s(t.$t("assets.common.depreciation"))+"\n                    ")]):t._e(),t._v(" "),t.allData.depreciation?r("th",[t._v("\n                      "+t._s(t.$t("assets.common.salvage_value"))+"\n                    ")]):t._e(),t._v(" "),t.allData.depreciation?r("th",[t._v("\n                      "+t._s(t.$t("assets.common.useful_life"))+"\n                    ")]):t._e(),t._v(" "),t.allData.depreciation?r("th",[t._v("\n                      "+t._s(t.$t("assets.common.remaining_life"))+"\n                    ")]):t._e(),t._v(" "),1==t.allData.depreciation?r("th",[t._v("\n                      "+t._s(t.$t("assets.common.expired_date"))+"\n                    ")]):t._e(),t._v(" "),r("th",[t._v(t._s(t.$t("assets.common.current_value")))]),t._v(" "),t.allData.note?r("th",[t._v(t._s(t.$t("common.note")))]):t._e(),t._v(" "),r("th",{staticClass:"text-right"},[t._v(t._s(t.$t("common.status")))])])]),t._v(" "),r("tbody",[r("tr",[r("td",[t.allData.image?r("a",{attrs:{href:"#",id:"show-modal"},on:{click:function(e){t.showModal=!0}}},[r("img",{staticClass:"rounded preview-sm",attrs:{src:t.allData.image,loading:"lazy"}})]):r("div",{staticClass:"bg-secondary rounded no-preview-sm"},[r("small",[t._v(t._s(t.$t("common.no_preview")))])])]),t._v(" "),t.allData.date?r("td",[t._v("\n                      "+t._s(t._f("moment")(t.allData.date,"Do MMM, YYYY"))+"\n                    ")]):t._e(),t._v(" "),r("td",[t._v(t._s(t._f("withCurrency")(t.allData.amount)))]),t._v(" "),t.allData.depreciation?r("td",[t._v("\n                      "+t._s(t.allData.depreciationExpenseTxt)+"\n                    ")]):t._e(),t._v(" "),t.allData.depreciation?r("td",[t._v("\n                      "+t._s(t._f("withCurrency")(t.allData.salvageValue))+"\n                    ")]):t._e(),t._v(" "),t.allData.depreciation?r("td",[t._v("\n                      "+t._s(t.allData.usefulLife)+"\n                      "),1==t.allData.depreciationType?r("span",[t._v("Year")]):r("span",[t._v("Month")])]):t._e(),t._v(" "),t.allData.depreciation?r("td",[t._v("\n                      "+t._s(t.allData.remainingLife)+"\n                    ")]):t._e(),t._v(" "),1==t.allData.depreciation&&t.allData.expireDate?r("td",[t._v("\n                      "+t._s(t._f("moment")(t.allData.expireDate,"Do MMM, YYYY"))+"\n                    ")]):t._e(),t._v(" "),r("td",[t._v(t._s(t._f("withCurrency")(t.allData.currentValue)))]),t._v(" "),t.allData.note?r("td",[t._v(t._s(t.allData.note))]):t._e(),t._v(" "),r("td",{staticClass:"text-right"},[1===t.allData.status?r("span",{staticClass:"badge bg-success"},[t._v(t._s(t.$t("common.active")))]):r("span",{staticClass:"badge bg-danger"},[t._v(t._s(t.$t("common.in_active")))])])])])])])])]),t._v(" "),r("div",{staticClass:"row no-print mt-5"},[r("div",{staticClass:"col-12"},[r("router-link",{staticClass:"btn btn-dark float-right",attrs:{to:{name:"assets.index"}}},[r("i",{staticClass:"fas fa-long-arrow-alt-left"}),t._v(" "+t._s(t.$t("common.back"))+"\n            ")]),t._v(" "),r("a",{staticClass:"btn btn-default",attrs:{href:"#"},on:{click:t.printWindow}},[r("i",{staticClass:"fas fa-print"}),t._v(" "+t._s(t.$t("common.print")))])],1)])])])]),t._v(" "),t.showModal?r("Modal",{on:{close:function(e){t.showModal=!1}}},[r("h5",{attrs:{slot:"header"},slot:"header"},[t._v(t._s(t.$t("common.modal_header")))]),t._v(" "),r("div",{staticClass:"w-100",attrs:{slot:"body"},slot:"body"},[r("img",{staticClass:"rounded img-fluid",attrs:{src:t.allData.image,loading:"lazy"}})])]):t._e()],1)}),[],!1,null,"1d35a106",null);e.default=u.exports}}]);