/*! For license information please see 73.aa8bf8.js.LICENSE.txt */
(window.webpackJsonp=window.webpackJsonp||[]).push([[73],{378:function(t,r,e){"use strict";e.r(r);var n=e(8),o=e.n(n);function a(t){return(a="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function i(){i=function(){return t};var t={},r=Object.prototype,e=r.hasOwnProperty,n="function"==typeof Symbol?Symbol:{},o=n.iterator||"@@iterator",c=n.asyncIterator||"@@asyncIterator",s=n.toStringTag||"@@toStringTag";function l(t,r,e){return Object.defineProperty(t,r,{value:e,enumerable:!0,configurable:!0,writable:!0}),t[r]}try{l({},"")}catch(t){l=function(t,r,e){return t[r]=e}}function u(t,r,e,n){var o=r&&r.prototype instanceof v?r:v,a=Object.create(o.prototype),i=new C(n||[]);return a._invoke=function(t,r,e){var n="suspendedStart";return function(o,a){if("executing"===n)throw new Error("Generator is already running");if("completed"===n){if("throw"===o)throw a;return D()}for(e.method=o,e.arg=a;;){var i=e.delegate;if(i){var c=x(i,e);if(c){if(c===h)continue;return c}}if("next"===e.method)e.sent=e._sent=e.arg;else if("throw"===e.method){if("suspendedStart"===n)throw n="completed",e.arg;e.dispatchException(e.arg)}else"return"===e.method&&e.abrupt("return",e.arg);n="executing";var s=f(t,r,e);if("normal"===s.type){if(n=e.done?"completed":"suspendedYield",s.arg===h)continue;return{value:s.arg,done:e.done}}"throw"===s.type&&(n="completed",e.method="throw",e.arg=s.arg)}}}(t,e,i),a}function f(t,r,e){try{return{type:"normal",arg:t.call(r,e)}}catch(t){return{type:"throw",arg:t}}}t.wrap=u;var h={};function v(){}function d(){}function m(){}var p={};l(p,o,(function(){return this}));var _=Object.getPrototypeOf,y=_&&_(_(E([])));y&&y!==r&&e.call(y,o)&&(p=y);var b=m.prototype=v.prototype=Object.create(p);function g(t){["next","throw","return"].forEach((function(r){l(t,r,(function(t){return this._invoke(r,t)}))}))}function w(t,r){var n;this._invoke=function(o,i){function c(){return new r((function(n,c){!function n(o,i,c,s){var l=f(t[o],t,i);if("throw"!==l.type){var u=l.arg,h=u.value;return h&&"object"==a(h)&&e.call(h,"__await")?r.resolve(h.__await).then((function(t){n("next",t,c,s)}),(function(t){n("throw",t,c,s)})):r.resolve(h).then((function(t){u.value=t,c(u)}),(function(t){return n("throw",t,c,s)}))}s(l.arg)}(o,i,n,c)}))}return n=n?n.then(c,c):c()}}function x(t,r){var e=t.iterator[r.method];if(void 0===e){if(r.delegate=null,"throw"===r.method){if(t.iterator.return&&(r.method="return",r.arg=void 0,x(t,r),"throw"===r.method))return h;r.method="throw",r.arg=new TypeError("The iterator does not provide a 'throw' method")}return h}var n=f(e,t.iterator,r.arg);if("throw"===n.type)return r.method="throw",r.arg=n.arg,r.delegate=null,h;var o=n.arg;return o?o.done?(r[t.resultName]=o.value,r.next=t.nextLoc,"return"!==r.method&&(r.method="next",r.arg=void 0),r.delegate=null,h):o:(r.method="throw",r.arg=new TypeError("iterator result is not an object"),r.delegate=null,h)}function L(t){var r={tryLoc:t[0]};1 in t&&(r.catchLoc=t[1]),2 in t&&(r.finallyLoc=t[2],r.afterLoc=t[3]),this.tryEntries.push(r)}function k(t){var r=t.completion||{};r.type="normal",delete r.arg,t.completion=r}function C(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(L,this),this.reset(!0)}function E(t){if(t){var r=t[o];if(r)return r.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var n=-1,a=function r(){for(;++n<t.length;)if(e.call(t,n))return r.value=t[n],r.done=!1,r;return r.value=void 0,r.done=!0,r};return a.next=a}}return{next:D}}function D(){return{value:void 0,done:!0}}return d.prototype=m,l(b,"constructor",m),l(m,"constructor",d),d.displayName=l(m,s,"GeneratorFunction"),t.isGeneratorFunction=function(t){var r="function"==typeof t&&t.constructor;return!!r&&(r===d||"GeneratorFunction"===(r.displayName||r.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,m):(t.__proto__=m,l(t,s,"GeneratorFunction")),t.prototype=Object.create(b),t},t.awrap=function(t){return{__await:t}},g(w.prototype),l(w.prototype,c,(function(){return this})),t.AsyncIterator=w,t.async=function(r,e,n,o,a){void 0===a&&(a=Promise);var i=new w(u(r,e,n,o),a);return t.isGeneratorFunction(e)?i:i.next().then((function(t){return t.done?t.value:i.next()}))},g(b),l(b,s,"Generator"),l(b,o,(function(){return this})),l(b,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var r=[];for(var e in t)r.push(e);return r.reverse(),function e(){for(;r.length;){var n=r.pop();if(n in t)return e.value=n,e.done=!1,e}return e.done=!0,e}},t.values=E,C.prototype={constructor:C,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(k),!t)for(var r in this)"t"===r.charAt(0)&&e.call(this,r)&&!isNaN(+r.slice(1))&&(this[r]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var r=this;function n(e,n){return i.type="throw",i.arg=t,r.next=e,n&&(r.method="next",r.arg=void 0),!!n}for(var o=this.tryEntries.length-1;o>=0;--o){var a=this.tryEntries[o],i=a.completion;if("root"===a.tryLoc)return n("end");if(a.tryLoc<=this.prev){var c=e.call(a,"catchLoc"),s=e.call(a,"finallyLoc");if(c&&s){if(this.prev<a.catchLoc)return n(a.catchLoc,!0);if(this.prev<a.finallyLoc)return n(a.finallyLoc)}else if(c){if(this.prev<a.catchLoc)return n(a.catchLoc,!0)}else{if(!s)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return n(a.finallyLoc)}}}},abrupt:function(t,r){for(var n=this.tryEntries.length-1;n>=0;--n){var o=this.tryEntries[n];if(o.tryLoc<=this.prev&&e.call(o,"finallyLoc")&&this.prev<o.finallyLoc){var a=o;break}}a&&("break"===t||"continue"===t)&&a.tryLoc<=r&&r<=a.finallyLoc&&(a=null);var i=a?a.completion:{};return i.type=t,i.arg=r,a?(this.method="next",this.next=a.finallyLoc,h):this.complete(i)},complete:function(t,r){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&r&&(this.next=r),h},finish:function(t){for(var r=this.tryEntries.length-1;r>=0;--r){var e=this.tryEntries[r];if(e.finallyLoc===t)return this.complete(e.completion,e.afterLoc),k(e),h}},catch:function(t){for(var r=this.tryEntries.length-1;r>=0;--r){var e=this.tryEntries[r];if(e.tryLoc===t){var n=e.completion;if("throw"===n.type){var o=n.arg;k(e)}return o}}throw new Error("illegal catch attempt")},delegateYield:function(t,r,e){return this.delegate={iterator:E(t),resultName:r,nextLoc:e},"next"===this.method&&(this.arg=void 0),h}},t}function c(t,r,e,n,o,a,i){try{var c=t[a](i),s=c.value}catch(t){return void e(t)}c.done?r(s):Promise.resolve(s).then(n,o)}var s={middleware:["auth","check-permissions"],metaInfo:function(){return{title:this.$t("cashbook.transfers.view.page_title")}},data:function(){return{breadcrumbsCurrent:"cashbook.transfers.view.breadcrumbs_current",breadcrumbs:[{name:"cashbook.transfers.view.breadcrumbs_first",url:"home"},{name:"cashbook.transfers.view.breadcrumbs_second",url:""},{name:"cashbook.transfers.view.breadcrumbs_third",url:"transferBalances.index"},{name:"cashbook.transfers.view.breadcrumbs_active",url:""}],showModal:!1,allData:""}},created:function(){this.getTransfer()},methods:{getTransfer:function(){var t,r=this;return(t=i().mark((function t(){var e,n;return i().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,o.a.get(window.location.origin+"/api/balance-transfers/"+r.$route.params.slug);case 2:e=t.sent,n=e.data,r.allData=n.data;case 5:case"end":return t.stop()}}),t)})),function(){var r=this,e=arguments;return new Promise((function(n,o){var a=t.apply(r,e);function i(t){c(a,n,o,i,s,"next",t)}function s(t){c(a,n,o,i,s,"throw",t)}i(void 0)}))})()},printWindow:function(){window.print()}}},l=e(1),u=Object(l.a)(s,(function(){var t=this,r=t.$createElement,e=t._self._c||r;return e("div",[e("breadcrumbs",{attrs:{items:t.breadcrumbs,current:t.breadcrumbsCurrent}}),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-12"},[e("div",{staticClass:"invoice p-3 mb-3"},[e("div",{staticClass:"row invoice-info"},[e("div",{staticClass:"col-sm-4 invoice-col"},[e("CompanyInfo")],1),t._v(" "),e("div",{staticClass:"col-sm-6 offset-sm-2 invoice-col float-right text-md-right"},[e("h5",[t._v(t._s(t.$t("cashbook.transfers.view.breadcrumbs_current")))]),t._v(" "),t.allData.date?e("strong",[t._v(t._s(t.$t("common.date"))+":")]):t._e(),t._v("\n            "+t._s(t._f("moment")(t.allData.date,"Do MMM, YYYY"))),e("br"),t._v(" "),e("strong",[t._v(t._s(t.$t("common.created_by"))+":")]),t._v("\n            "+t._s(t.allData.createdBy)+"\n          ")])]),t._v(" "),e("div",{staticClass:"row mt-5"},[e("div",{staticClass:"table-responsive table-custom text-center"},[e("table",{staticClass:"table table-hover"},[e("thead",[e("tr",[e("th",[t._v(t._s(t.$t("common.reason")))]),t._v(" "),e("th",[t._v(t._s(t.$t("cashbook.common.from_account")))]),t._v(" "),e("th",[t._v(t._s(t.$t("cashbook.common.to_account")))]),t._v(" "),e("th",[t._v(t._s(t.$t("common.amount")))]),t._v(" "),t.allData.date?e("th",[t._v(t._s(t.$t("common.date")))]):t._e(),t._v(" "),t.allData.note?e("th",[t._v(t._s(t.$t("common.note")))]):t._e(),t._v(" "),e("th",[t._v(t._s(t.$t("common.status")))]),t._v(" "),e("th",{staticClass:"text-right"},[t._v(t._s(t.$t("common.created_by")))])])]),t._v(" "),e("tbody",[e("tr",[e("td",[t._v(t._s(t.allData.reason))]),t._v(" "),e("td",[t.allData.fromAccount?e("span",[t._v(t._s(t.allData.fromAccount.label))]):t._e()]),t._v(" "),e("td",[t.allData.toAccount?e("span",[t._v(t._s(t.allData.toAccount.label))]):t._e()]),t._v(" "),e("td",[t._v(t._s(t._f("withCurrency")(t.allData.amount)))]),t._v(" "),e("td",[t.allData.date?e("span",[t._v(t._s(t._f("moment")(t.allData.date,"Do MMM, YYYY")))]):t._e()]),t._v(" "),t.allData.note?e("td",[t._v(t._s(t.allData.note))]):t._e(),t._v(" "),e("td",[1===t.allData.status?e("span",{staticClass:"badge bg-success"},[t._v(t._s(t.$t("common.active")))]):e("span",{staticClass:"badge bg-danger"},[t._v(t._s(t.$t("common.in_active")))])]),t._v(" "),e("td",{staticClass:"text-right"},[t._v(t._s(t.allData.createdBy))])])])])])]),t._v(" "),e("div",{staticClass:"row no-print mt-5"},[e("div",{staticClass:"col-12"},[e("router-link",{staticClass:"btn btn-dark float-right",attrs:{to:{name:"transferBalances.index"}}},[e("i",{staticClass:"fas fa-long-arrow-alt-left"}),t._v(" "+t._s(t.$t("common.back"))+"\n            ")]),t._v(" "),e("a",{staticClass:"btn btn-default",attrs:{href:"#"},on:{click:t.printWindow}},[e("i",{staticClass:"fas fa-print"}),t._v(" "+t._s(t.$t("common.print")))])],1)])])])])],1)}),[],!1,null,"b055c34c",null);r.default=u.exports}}]);