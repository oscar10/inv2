/*! For license information please see 106.428e08.js.LICENSE.txt */
(window.webpackJsonp=window.webpackJsonp||[]).push([[106],{413:function(t,e,r){"use strict";r.r(e);var o=r(3),n=r(4),a=r.n(n);function i(t){return(i="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function c(){c=function(){return t};var t={},e=Object.prototype,r=e.hasOwnProperty,o="function"==typeof Symbol?Symbol:{},n=o.iterator||"@@iterator",a=o.asyncIterator||"@@asyncIterator",s=o.toStringTag||"@@toStringTag";function u(t,e,r){return Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{u({},"")}catch(t){u=function(t,e,r){return t[e]=r}}function l(t,e,r,o){var n=e&&e.prototype instanceof d?e:d,a=Object.create(n.prototype),i=new A(o||[]);return a._invoke=function(t,e,r){var o="suspendedStart";return function(n,a){if("executing"===o)throw new Error("Generator is already running");if("completed"===o){if("throw"===n)throw a;return P()}for(r.method=n,r.arg=a;;){var i=r.delegate;if(i){var c=x(i,r);if(c){if(c===f)continue;return c}}if("next"===r.method)r.sent=r._sent=r.arg;else if("throw"===r.method){if("suspendedStart"===o)throw o="completed",r.arg;r.dispatchException(r.arg)}else"return"===r.method&&r.abrupt("return",r.arg);o="executing";var s=m(t,e,r);if("normal"===s.type){if(o=r.done?"completed":"suspendedYield",s.arg===f)continue;return{value:s.arg,done:r.done}}"throw"===s.type&&(o="completed",r.method="throw",r.arg=s.arg)}}}(t,r,i),a}function m(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(t){return{type:"throw",arg:t}}}t.wrap=l;var f={};function d(){}function v(){}function p(){}var h={};u(h,n,(function(){return this}));var y=Object.getPrototypeOf,g=y&&y(y($([])));g&&g!==e&&r.call(g,n)&&(h=g);var _=p.prototype=d.prototype=Object.create(h);function b(t){["next","throw","return"].forEach((function(e){u(t,e,(function(t){return this._invoke(e,t)}))}))}function w(t,e){var o;this._invoke=function(n,a){function c(){return new e((function(o,c){!function o(n,a,c,s){var u=m(t[n],t,a);if("throw"!==u.type){var l=u.arg,f=l.value;return f&&"object"==i(f)&&r.call(f,"__await")?e.resolve(f.__await).then((function(t){o("next",t,c,s)}),(function(t){o("throw",t,c,s)})):e.resolve(f).then((function(t){l.value=t,c(l)}),(function(t){return o("throw",t,c,s)}))}s(u.arg)}(n,a,o,c)}))}return o=o?o.then(c,c):c()}}function x(t,e){var r=t.iterator[e.method];if(void 0===r){if(e.delegate=null,"throw"===e.method){if(t.iterator.return&&(e.method="return",e.arg=void 0,x(t,e),"throw"===e.method))return f;e.method="throw",e.arg=new TypeError("The iterator does not provide a 'throw' method")}return f}var o=m(r,t.iterator,e.arg);if("throw"===o.type)return e.method="throw",e.arg=o.arg,e.delegate=null,f;var n=o.arg;return n?n.done?(e[t.resultName]=n.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=void 0),e.delegate=null,f):n:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,f)}function C(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function N(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function A(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(C,this),this.reset(!0)}function $(t){if(t){var e=t[n];if(e)return e.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var o=-1,a=function e(){for(;++o<t.length;)if(r.call(t,o))return e.value=t[o],e.done=!1,e;return e.value=void 0,e.done=!0,e};return a.next=a}}return{next:P}}function P(){return{value:void 0,done:!0}}return v.prototype=p,u(_,"constructor",p),u(p,"constructor",v),v.displayName=u(p,s,"GeneratorFunction"),t.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===v||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,p):(t.__proto__=p,u(t,s,"GeneratorFunction")),t.prototype=Object.create(_),t},t.awrap=function(t){return{__await:t}},b(w.prototype),u(w.prototype,a,(function(){return this})),t.AsyncIterator=w,t.async=function(e,r,o,n,a){void 0===a&&(a=Promise);var i=new w(l(e,r,o,n),a);return t.isGeneratorFunction(r)?i:i.next().then((function(t){return t.done?t.value:i.next()}))},b(_),u(_,s,"Generator"),u(_,n,(function(){return this})),u(_,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var e=[];for(var r in t)e.push(r);return e.reverse(),function r(){for(;e.length;){var o=e.pop();if(o in t)return r.value=o,r.done=!1,r}return r.done=!0,r}},t.values=$,A.prototype={constructor:A,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(N),!t)for(var e in this)"t"===e.charAt(0)&&r.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function o(r,o){return i.type="throw",i.arg=t,e.next=r,o&&(e.method="next",e.arg=void 0),!!o}for(var n=this.tryEntries.length-1;n>=0;--n){var a=this.tryEntries[n],i=a.completion;if("root"===a.tryLoc)return o("end");if(a.tryLoc<=this.prev){var c=r.call(a,"catchLoc"),s=r.call(a,"finallyLoc");if(c&&s){if(this.prev<a.catchLoc)return o(a.catchLoc,!0);if(this.prev<a.finallyLoc)return o(a.finallyLoc)}else if(c){if(this.prev<a.catchLoc)return o(a.catchLoc,!0)}else{if(!s)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return o(a.finallyLoc)}}}},abrupt:function(t,e){for(var o=this.tryEntries.length-1;o>=0;--o){var n=this.tryEntries[o];if(n.tryLoc<=this.prev&&r.call(n,"finallyLoc")&&this.prev<n.finallyLoc){var a=n;break}}a&&("break"===t||"continue"===t)&&a.tryLoc<=e&&e<=a.finallyLoc&&(a=null);var i=a?a.completion:{};return i.type=t,i.arg=e,a?(this.method="next",this.next=a.finallyLoc,f):this.complete(i)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),f},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),N(r),f}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var o=r.completion;if("throw"===o.type){var n=o.arg;N(r)}return n}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,r){return this.delegate={iterator:$(t),resultName:e,nextLoc:r},"next"===this.method&&(this.arg=void 0),f}},t}function s(t,e,r,o,n,a,i){try{var c=t[a](i),s=c.value}catch(t){return void r(t)}c.done?e(s):Promise.resolve(s).then(o,n)}function u(t){return function(){var e=this,r=arguments;return new Promise((function(o,n){var a=t.apply(e,r);function i(t){s(a,o,n,i,c,"next",t)}function c(t){s(a,o,n,i,c,"throw",t)}i(void 0)}))}}function l(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(t);e&&(o=o.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,o)}return r}function m(t,e,r){return e in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}var f={middleware:["auth","check-permissions"],metaInfo:function(){return{title:this.$t("payments.clients.invoice.edit.page_title")}},data:function(){return{breadcrumbsCurrent:"payments.clients.invoice.edit.breadcrumbs_current",breadcrumbs:[{name:"payments.clients.invoice.edit.breadcrumbs_first",url:"home"},{name:"payments.clients.invoice.edit.breadcrumbs_second",url:""},{name:"payments.clients.invoice.edit.breadcrumbs_third",url:"invoicePayments.index"},{name:"payments.clients.invoice.edit.breadcrumbs_active",url:""}],form:new a.a({client:"",invoice:"",invoiceTotal:0,dueAmount:0,account:"",paidAmount:"",maxAmount:0,minAmount:0,previousPaidAmount:0,chequeNo:"",receiptNo:"",paymentDate:"",paymentType:"",note:"",status:1}),accounts:""}},computed:function(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?l(Object(r),!0).forEach((function(e){m(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):l(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}({},Object(o.b)("operations",["items"])),created:function(){this.getAccounts(),this.getInvoicePayment()},methods:{getAccounts:function(){var t=this;return u(c().mark((function e(){var r,o;return c().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.form.get(window.location.origin+"/api/all-accounts");case 2:r=e.sent,o=r.data,t.accounts=o.data;case 5:case"end":return e.stop()}}),e)})))()},getInvoicePayment:function(){var t=this;return u(c().mark((function e(){var r,o;return c().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.form.get(window.location.origin+"/api/payments/invoice/"+t.$route.params.slug);case 2:r=e.sent,o=r.data,t.form.invoice=o.data.invoice,t.form.invoiceTotal=o.data.invoice.subTotal+o.data.invoice.tax+o.data.invoice.transport-o.data.invoice.discount-o.data.costOfReturn,t.form.client=o.data.client,t.form.account=o.data.account,t.form.paidAmount=o.data.amount,t.form.previousPaidAmount=o.data.amount,t.form.dueAmount=o.data.invoice.due,t.form.maxAmount=o.data.amount+o.data.invoice.due,t.form.minAmount=o.data.accountPayable>0?o.data.amount:1,t.form.chequeNo=o.data.transaction.cheque_no,t.form.receiptNo=o.data.transaction.receipt_no,t.form.paymentDate=o.data.date,t.form.note=o.data.note,t.form.status=o.data.status;case 18:case"end":return e.stop()}}),e)})))()},calculateDue:function(){var t=Number(this.form.paidAmount);this.form.dueAmount=this.form.invoice.due+this.form.previousPaidAmount-t},updatePayment:function(){var t=this;return u(c().mark((function e(){return c().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.form.patch(window.location.origin+"/api/payments/invoice/"+t.$route.params.slug).then((function(e){toast.fire({type:"success",title:t.$t("payments.clients.invoice.edit.success_msg")}),t.$router.push({name:"invoicePayments.index"})})).catch((function(){toast.fire({type:"error",title:t.$t("common.error_msg")})}));case 2:case"end":return e.stop()}}),e)})))()}}},d=r(1),v=Object(d.a)(f,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("breadcrumbs",{attrs:{items:t.breadcrumbs,current:t.breadcrumbsCurrent}}),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-12"},[r("div",{staticClass:"card"},[r("div",{staticClass:"card-header"},[r("h3",{staticClass:"card-title"},[t._v("\n            "+t._s(t.$t("payments.clients.invoice.edit.form_title"))+"\n          ")]),t._v(" "),r("router-link",{staticClass:"btn btn-dark float-right",attrs:{to:{name:"invoicePayments.index"}}},[r("i",{staticClass:"fas fa-long-arrow-alt-left"}),t._v(" "+t._s(t.$t("common.back"))+"\n          ")])],1),t._v(" "),r("form",{attrs:{role:"form"},on:{submit:function(e){return e.preventDefault(),t.updatePayment.apply(null,arguments)},keydown:function(e){return t.form.onKeydown(e)}}},[r("div",{staticClass:"card-body"},[t.form.invoice?r("div",{staticClass:"row"},[r("div",{staticClass:"form-group col-md-4"},[r("label",{attrs:{for:"invoice"}},[t._v(t._s(t.$t("common.invoice_no"))),r("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.invoice.invoiceLabel,expression:"form.invoice.invoiceLabel"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("invoice")},attrs:{id:"invoice",type:"text",step:"any",name:"invoice",readonly:""},domProps:{value:t.form.invoice.invoiceLabel},on:{input:function(e){e.target.composing||t.$set(t.form.invoice,"invoiceLabel",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"invoice"}})],1),t._v(" "),r("div",{staticClass:"form-group col-md-4"},[r("label",{attrs:{for:"invoice.invoiceTotal"}},[t._v(t._s(t.$t("common.invoice_total")))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.invoiceTotal,expression:"form.invoiceTotal"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("invoice.invoiceTotal")},attrs:{id:"invoice.invoiceTotal",type:"text",step:"any",name:"invoice.invoiceTotal",readonly:""},domProps:{value:t.form.invoiceTotal},on:{input:function(e){e.target.composing||t.$set(t.form,"invoiceTotal",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"invoice.invoiceTotal"}})],1),t._v(" "),r("div",{staticClass:"form-group col-md-4"},[r("label",{attrs:{for:"dueAmount"}},[t._v(t._s(t.$t("common.total_due")))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.dueAmount,expression:"form.dueAmount"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("dueAmount")},attrs:{id:"dueAmount",type:"text",name:"dueAmount",readonly:""},domProps:{value:t.form.dueAmount},on:{input:function(e){e.target.composing||t.$set(t.form,"dueAmount",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"dueAmount"}})],1)]):t._e(),t._v(" "),t.accounts?r("div",{staticClass:"row"},[r("div",{staticClass:"form-group col-md-6"},[r("label",{attrs:{for:"account"}},[t._v(t._s(t.$t("common.account"))+"\n                  "),r("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),r("v-select",{class:{"is-invalid":t.form.errors.has("account")},attrs:{options:t.accounts,label:"label",name:"account",placeholder:t.$t("common.account_placeholder")},model:{value:t.form.account,callback:function(e){t.$set(t.form,"account",e)},expression:"form.account"}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"account"}})],1),t._v(" "),r("div",{staticClass:"form-group col-md-3"},[r("label",{attrs:{for:"chequeNo"}},[t._v(t._s(t.$t("common.cheque_no")))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.chequeNo,expression:"form.chequeNo"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("chequeNo")},attrs:{id:"chequeNo",type:"text",step:"any",name:"chequeNo",placeholder:t.$t("common.cheque_placeholder")},domProps:{value:t.form.chequeNo},on:{input:function(e){e.target.composing||t.$set(t.form,"chequeNo",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"chequeNo"}})],1),t._v(" "),r("div",{staticClass:"form-group col-md-3"},[r("label",{attrs:{for:"receiptNo"}},[t._v(t._s(t.$t("common.receipt_no")))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.receiptNo,expression:"form.receiptNo"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("receiptNo")},attrs:{id:"receiptNo",type:"text",name:"receiptNo",placeholder:t.$t("common.receipt_no_placeholder")},domProps:{value:t.form.receiptNo},on:{input:function(e){e.target.composing||t.$set(t.form,"receiptNo",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"receiptNo"}})],1)]):t._e(),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"form-group col-md-4"},[r("label",{attrs:{for:"paidAmount"}},[t._v(t._s(t.$t("common.paid_amount"))+"\n                  "),r("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.paidAmount,expression:"form.paidAmount"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("paidAmount")},attrs:{id:"paidAmount",type:"number",step:"any",name:"paidAmount",max:t.form.maxAmount,min:t.form.minAmount,placeholder:t.$t("common.paid_amount_placeholder")},domProps:{value:t.form.paidAmount},on:{change:t.calculateDue,keyup:t.calculateDue,input:function(e){e.target.composing||t.$set(t.form,"paidAmount",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"paidAmount"}})],1),t._v(" "),r("div",{staticClass:"form-group col-md-4"},[r("label",{attrs:{for:"paymentDate"}},[t._v(t._s(t.$t("common.payment_date")))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.paymentDate,expression:"form.paymentDate"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("paymentDate")},attrs:{id:"paymentDate",type:"date",name:"paymentDate"},domProps:{value:t.form.paymentDate},on:{input:function(e){e.target.composing||t.$set(t.form,"paymentDate",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"paymentDate"}})],1),t._v(" "),r("div",{staticClass:"form-group col-md-4"},[r("label",{attrs:{for:"status"}},[t._v(t._s(t.$t("common.status")))]),t._v(" "),r("select",{directives:[{name:"model",rawName:"v-model",value:t.form.status,expression:"form.status"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("status")},attrs:{id:"status"},on:{change:function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"status",e.target.multiple?r:r[0])}}},[r("option",{attrs:{value:"1"}},[t._v(t._s(t.$t("common.active")))]),t._v(" "),r("option",{attrs:{value:"0"}},[t._v(t._s(t.$t("common.in_active")))])]),t._v(" "),r("has-error",{attrs:{form:t.form,field:"status"}})],1)]),t._v(" "),r("div",{staticClass:"form-group"},[r("label",{attrs:{for:"note"}},[t._v(t._s(t.$t("common.note")))]),t._v(" "),r("textarea",{directives:[{name:"model",rawName:"v-model",value:t.form.note,expression:"form.note"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("note")},attrs:{id:"note",placeholder:t.$t("common.note_placeholder")},domProps:{value:t.form.note},on:{input:function(e){e.target.composing||t.$set(t.form,"note",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"note"}})],1)]),t._v(" "),r("div",{staticClass:"card-footer"},[r("v-button",{staticClass:"btn btn-primary",attrs:{loading:t.form.busy}},[r("i",{staticClass:"fas fa-edit"}),t._v(" "+t._s(t.$t("common.save_changes"))+"\n            ")]),t._v(" "),r("button",{staticClass:"btn btn-secondary float-right",attrs:{type:"reset"},on:{click:function(e){return t.form.reset()}}},[r("i",{staticClass:"fas fa-power-off"}),t._v(" "+t._s(t.$t("common.reset"))+"\n            ")])],1)])])])])],1)}),[],!1,null,"7abc88f6",null);e.default=v.exports}}]);