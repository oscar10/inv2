/*! For license information please see 156.da4173.js.LICENSE.txt */
(window.webpackJsonp=window.webpackJsonp||[]).push([[156],{468:function(t,r,e){"use strict";e.r(r);var n=e(4),o=e.n(n);function a(t){return(a="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function i(){i=function(){return t};var t={},r=Object.prototype,e=r.hasOwnProperty,n="function"==typeof Symbol?Symbol:{},o=n.iterator||"@@iterator",s=n.asyncIterator||"@@asyncIterator",c=n.toStringTag||"@@toStringTag";function u(t,r,e){return Object.defineProperty(t,r,{value:e,enumerable:!0,configurable:!0,writable:!0}),t[r]}try{u({},"")}catch(t){u=function(t,r,e){return t[r]=e}}function l(t,r,e,n){var o=r&&r.prototype instanceof d?r:d,a=Object.create(o.prototype),i=new E(n||[]);return a._invoke=function(t,r,e){var n="suspendedStart";return function(o,a){if("executing"===n)throw new Error("Generator is already running");if("completed"===n){if("throw"===o)throw a;return $()}for(e.method=o,e.arg=a;;){var i=e.delegate;if(i){var s=x(i,e);if(s){if(s===m)continue;return s}}if("next"===e.method)e.sent=e._sent=e.arg;else if("throw"===e.method){if("suspendedStart"===n)throw n="completed",e.arg;e.dispatchException(e.arg)}else"return"===e.method&&e.abrupt("return",e.arg);n="executing";var c=f(t,r,e);if("normal"===c.type){if(n=e.done?"completed":"suspendedYield",c.arg===m)continue;return{value:c.arg,done:e.done}}"throw"===c.type&&(n="completed",e.method="throw",e.arg=c.arg)}}}(t,e,i),a}function f(t,r,e){try{return{type:"normal",arg:t.call(r,e)}}catch(t){return{type:"throw",arg:t}}}t.wrap=l;var m={};function d(){}function p(){}function h(){}var v={};u(v,o,(function(){return this}));var g=Object.getPrototypeOf,y=g&&g(g(N([])));y&&y!==r&&e.call(y,o)&&(v=y);var w=h.prototype=d.prototype=Object.create(v);function b(t){["next","throw","return"].forEach((function(r){u(t,r,(function(t){return this._invoke(r,t)}))}))}function _(t,r){var n;this._invoke=function(o,i){function s(){return new r((function(n,s){!function n(o,i,s,c){var u=f(t[o],t,i);if("throw"!==u.type){var l=u.arg,m=l.value;return m&&"object"==a(m)&&e.call(m,"__await")?r.resolve(m.__await).then((function(t){n("next",t,s,c)}),(function(t){n("throw",t,s,c)})):r.resolve(m).then((function(t){l.value=t,s(l)}),(function(t){return n("throw",t,s,c)}))}c(u.arg)}(o,i,n,s)}))}return n=n?n.then(s,s):s()}}function x(t,r){var e=t.iterator[r.method];if(void 0===e){if(r.delegate=null,"throw"===r.method){if(t.iterator.return&&(r.method="return",r.arg=void 0,x(t,r),"throw"===r.method))return m;r.method="throw",r.arg=new TypeError("The iterator does not provide a 'throw' method")}return m}var n=f(e,t.iterator,r.arg);if("throw"===n.type)return r.method="throw",r.arg=n.arg,r.delegate=null,m;var o=n.arg;return o?o.done?(r[t.resultName]=o.value,r.next=t.nextLoc,"return"!==r.method&&(r.method="next",r.arg=void 0),r.delegate=null,m):o:(r.method="throw",r.arg=new TypeError("iterator result is not an object"),r.delegate=null,m)}function L(t){var r={tryLoc:t[0]};1 in t&&(r.catchLoc=t[1]),2 in t&&(r.finallyLoc=t[2],r.afterLoc=t[3]),this.tryEntries.push(r)}function C(t){var r=t.completion||{};r.type="normal",delete r.arg,t.completion=r}function E(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(L,this),this.reset(!0)}function N(t){if(t){var r=t[o];if(r)return r.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var n=-1,a=function r(){for(;++n<t.length;)if(e.call(t,n))return r.value=t[n],r.done=!1,r;return r.value=void 0,r.done=!0,r};return a.next=a}}return{next:$}}function $(){return{value:void 0,done:!0}}return p.prototype=h,u(w,"constructor",h),u(h,"constructor",p),p.displayName=u(h,c,"GeneratorFunction"),t.isGeneratorFunction=function(t){var r="function"==typeof t&&t.constructor;return!!r&&(r===p||"GeneratorFunction"===(r.displayName||r.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,h):(t.__proto__=h,u(t,c,"GeneratorFunction")),t.prototype=Object.create(w),t},t.awrap=function(t){return{__await:t}},b(_.prototype),u(_.prototype,s,(function(){return this})),t.AsyncIterator=_,t.async=function(r,e,n,o,a){void 0===a&&(a=Promise);var i=new _(l(r,e,n,o),a);return t.isGeneratorFunction(e)?i:i.next().then((function(t){return t.done?t.value:i.next()}))},b(w),u(w,c,"Generator"),u(w,o,(function(){return this})),u(w,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var r=[];for(var e in t)r.push(e);return r.reverse(),function e(){for(;r.length;){var n=r.pop();if(n in t)return e.value=n,e.done=!1,e}return e.done=!0,e}},t.values=N,E.prototype={constructor:E,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(C),!t)for(var r in this)"t"===r.charAt(0)&&e.call(this,r)&&!isNaN(+r.slice(1))&&(this[r]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var r=this;function n(e,n){return i.type="throw",i.arg=t,r.next=e,n&&(r.method="next",r.arg=void 0),!!n}for(var o=this.tryEntries.length-1;o>=0;--o){var a=this.tryEntries[o],i=a.completion;if("root"===a.tryLoc)return n("end");if(a.tryLoc<=this.prev){var s=e.call(a,"catchLoc"),c=e.call(a,"finallyLoc");if(s&&c){if(this.prev<a.catchLoc)return n(a.catchLoc,!0);if(this.prev<a.finallyLoc)return n(a.finallyLoc)}else if(s){if(this.prev<a.catchLoc)return n(a.catchLoc,!0)}else{if(!c)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return n(a.finallyLoc)}}}},abrupt:function(t,r){for(var n=this.tryEntries.length-1;n>=0;--n){var o=this.tryEntries[n];if(o.tryLoc<=this.prev&&e.call(o,"finallyLoc")&&this.prev<o.finallyLoc){var a=o;break}}a&&("break"===t||"continue"===t)&&a.tryLoc<=r&&r<=a.finallyLoc&&(a=null);var i=a?a.completion:{};return i.type=t,i.arg=r,a?(this.method="next",this.next=a.finallyLoc,m):this.complete(i)},complete:function(t,r){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&r&&(this.next=r),m},finish:function(t){for(var r=this.tryEntries.length-1;r>=0;--r){var e=this.tryEntries[r];if(e.finallyLoc===t)return this.complete(e.completion,e.afterLoc),C(e),m}},catch:function(t){for(var r=this.tryEntries.length-1;r>=0;--r){var e=this.tryEntries[r];if(e.tryLoc===t){var n=e.completion;if("throw"===n.type){var o=n.arg;C(e)}return o}}throw new Error("illegal catch attempt")},delegateYield:function(t,r,e){return this.delegate={iterator:N(t),resultName:r,nextLoc:e},"next"===this.method&&(this.arg=void 0),m}},t}function s(t,r,e,n,o,a,i){try{var s=t[a](i),c=s.value}catch(t){return void e(t)}s.done?r(c):Promise.resolve(c).then(n,o)}function c(t){return function(){var r=this,e=arguments;return new Promise((function(n,o){var a=t.apply(r,e);function i(t){s(a,n,o,i,c,"next",t)}function c(t){s(a,n,o,i,c,"throw",t)}i(void 0)}))}}var u={middleware:["auth","check-permissions"],metaInfo:function(){return{title:this.$t("setup.permissions.edit.page_title")}},data:function(){return{breadcrumbsCurrent:"setup.permissions.edit.breadcrumbs_current",breadcrumbs:[{name:"setup.permissions.edit.breadcrumbs_first",url:"home"},{name:"setup.permissions.edit.breadcrumbs_second",url:"setup.index"},{name:"setup.permissions.edit.breadcrumbs_third",url:"permissions.index"},{name:"setup.permissions.edit.breadcrumbs_active",url:""}],form:new o.a({name:"",guardName:"",slug:""}),loading:!0}},created:function(){this.getPermission()},methods:{getPermission:function(){var t=this;return c(i().mark((function r(){var e,n;return i().wrap((function(r){for(;;)switch(r.prev=r.next){case 0:return r.next=2,t.form.get(window.location.origin+"/api/permissions/"+t.$route.params.slug);case 2:e=r.sent,n=e.data,t.form.name=n.data.name,t.form.guardName=n.data.guardName,t.form.slug=n.data.slug;case 7:case"end":return r.stop()}}),r)})))()},updatePermission:function(){var t=this;return c(i().mark((function r(){return i().wrap((function(r){for(;;)switch(r.prev=r.next){case 0:return r.next=2,t.form.patch(window.location.origin+"/api/permissions/"+t.$route.params.slug).then((function(r){toast.fire({type:"success",title:t.$t("setup.permissions.edit.success_msg")}),t.$router.push({name:"permissions.index"})})).catch((function(){toast.fire({type:"error",title:t.$t("common.error_msg")})}));case 2:case"end":return r.stop()}}),r)})))()}}},l=e(1),f=Object(l.a)(u,(function(){var t=this,r=t.$createElement,e=t._self._c||r;return e("div",[e("breadcrumbs",{attrs:{items:t.breadcrumbs,current:t.breadcrumbsCurrent}}),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-12"},[e("div",{staticClass:"card"},[e("div",{staticClass:"card-header"},[e("h3",{staticClass:"card-title"},[t._v("\n            "+t._s(t.$t("setup.permissions.edit.form_title"))+"\n          ")]),t._v(" "),e("router-link",{staticClass:"btn btn-dark float-right",attrs:{to:{name:"permissions.index"}}},[e("i",{staticClass:"fas fa-long-arrow-alt-left"}),t._v(" "+t._s(t.$t("common.back"))+"\n          ")])],1),t._v(" "),e("form",{attrs:{role:"form"},on:{submit:function(r){return r.preventDefault(),t.updatePermission.apply(null,arguments)},keydown:function(r){return t.form.onKeydown(r)}}},[e("div",{staticClass:"card-body"},[e("div",{staticClass:"row"},[e("div",{staticClass:"form-group col-md-12"},[e("label",{attrs:{for:"name"}},[t._v(t._s(t.$t("common.name"))+"\n                  "),e("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.name,expression:"form.name"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("name")},attrs:{id:"name",type:"text",name:"name",placeholder:t.$t("common.name_placeholder")},domProps:{value:t.form.name},on:{input:function(r){r.target.composing||t.$set(t.form,"name",r.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"name"}})],1),t._v(" "),e("div",{staticClass:"form-group col-md-6"},[e("label",{attrs:{for:"guardName"}},[t._v(t._s(t.$t("setup.permissions.common.guard_name"))+"\n                  "),e("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.guardName,expression:"form.guardName"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("guardName")},attrs:{id:"guardName",type:"text",name:"guardName",placeholder:t.$t("setup.permissions.common.guard_name_placeholder")},domProps:{value:t.form.guardName},on:{input:function(r){r.target.composing||t.$set(t.form,"guardName",r.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"guardName"}})],1),t._v(" "),e("div",{staticClass:"form-group col-md-6"},[e("label",{attrs:{for:"slug"}},[t._v(t._s(t.$t("setup.permissions.common.slug"))+"\n                  "),e("span",{staticClass:"required"},[t._v("*")])]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.slug,expression:"form.slug"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("slug")},attrs:{id:"slug",type:"text",name:"slug",placeholder:t.$t("setup.permissions.common.slug_placeholder")},domProps:{value:t.form.slug},on:{input:function(r){r.target.composing||t.$set(t.form,"slug",r.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"slug"}})],1)])]),t._v(" "),e("div",{staticClass:"card-footer"},[e("v-button",{staticClass:"btn btn-primary",attrs:{loading:t.form.busy}},[e("i",{staticClass:"fas fa-edit"}),t._v(" "+t._s(t.$t("common.save_changes"))+"\n            ")]),t._v(" "),e("button",{staticClass:"btn btn-secondary float-right",attrs:{type:"reset"},on:{click:function(r){return t.form.reset()}}},[e("i",{staticClass:"fas fa-power-off"}),t._v(" "+t._s(t.$t("common.reset"))+"\n            ")])],1)])])])])],1)}),[],!1,null,"44d9821a",null);r.default=f.exports}}]);