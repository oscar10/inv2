/*! For license information please see 39.9740fe.js.LICENSE.txt */
(window.webpackJsonp=window.webpackJsonp||[]).push([[39],{127:function(t,e,r){"use strict";r.r(e);var n=r(3);function o(t){return(o="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function a(){a=function(){return t};var t={},e=Object.prototype,r=e.hasOwnProperty,n="function"==typeof Symbol?Symbol:{},i=n.iterator||"@@iterator",s=n.asyncIterator||"@@asyncIterator",c=n.toStringTag||"@@toStringTag";function u(t,e,r){return Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{u({},"")}catch(t){u=function(t,e,r){return t[e]=r}}function l(t,e,r,n){var o=e&&e.prototype instanceof h?e:h,a=Object.create(o.prototype),i=new C(n||[]);return a._invoke=function(t,e,r){var n="suspendedStart";return function(o,a){if("executing"===n)throw new Error("Generator is already running");if("completed"===n){if("throw"===o)throw a;return $()}for(r.method=o,r.arg=a;;){var i=r.delegate;if(i){var s=x(i,r);if(s){if(s===f)continue;return s}}if("next"===r.method)r.sent=r._sent=r.arg;else if("throw"===r.method){if("suspendedStart"===n)throw n="completed",r.arg;r.dispatchException(r.arg)}else"return"===r.method&&r.abrupt("return",r.arg);n="executing";var c=p(t,e,r);if("normal"===c.type){if(n=r.done?"completed":"suspendedYield",c.arg===f)continue;return{value:c.arg,done:r.done}}"throw"===c.type&&(n="completed",r.method="throw",r.arg=c.arg)}}}(t,r,i),a}function p(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(t){return{type:"throw",arg:t}}}t.wrap=l;var f={};function h(){}function d(){}function v(){}var m={};u(m,i,(function(){return this}));var g=Object.getPrototypeOf,y=g&&g(g(L([])));y&&y!==e&&r.call(y,i)&&(m=y);var b=v.prototype=h.prototype=Object.create(m);function _(t){["next","throw","return"].forEach((function(e){u(t,e,(function(t){return this._invoke(e,t)}))}))}function w(t,e){var n;this._invoke=function(a,i){function s(){return new e((function(n,s){!function n(a,i,s,c){var u=p(t[a],t,i);if("throw"!==u.type){var l=u.arg,f=l.value;return f&&"object"==o(f)&&r.call(f,"__await")?e.resolve(f.__await).then((function(t){n("next",t,s,c)}),(function(t){n("throw",t,s,c)})):e.resolve(f).then((function(t){l.value=t,s(l)}),(function(t){return n("throw",t,s,c)}))}c(u.arg)}(a,i,n,s)}))}return n=n?n.then(s,s):s()}}function x(t,e){var r=t.iterator[e.method];if(void 0===r){if(e.delegate=null,"throw"===e.method){if(t.iterator.return&&(e.method="return",e.arg=void 0,x(t,e),"throw"===e.method))return f;e.method="throw",e.arg=new TypeError("The iterator does not provide a 'throw' method")}return f}var n=p(r,t.iterator,e.arg);if("throw"===n.type)return e.method="throw",e.arg=n.arg,e.delegate=null,f;var o=n.arg;return o?o.done?(e[t.resultName]=o.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=void 0),e.delegate=null,f):o:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,f)}function P(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function O(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function C(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(P,this),this.reset(!0)}function L(t){if(t){var e=t[i];if(e)return e.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var n=-1,o=function e(){for(;++n<t.length;)if(r.call(t,n))return e.value=t[n],e.done=!1,e;return e.value=void 0,e.done=!0,e};return o.next=o}}return{next:$}}function $(){return{value:void 0,done:!0}}return d.prototype=v,u(b,"constructor",v),u(v,"constructor",d),d.displayName=u(v,c,"GeneratorFunction"),t.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===d||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,v):(t.__proto__=v,u(t,c,"GeneratorFunction")),t.prototype=Object.create(b),t},t.awrap=function(t){return{__await:t}},_(w.prototype),u(w.prototype,s,(function(){return this})),t.AsyncIterator=w,t.async=function(e,r,n,o,a){void 0===a&&(a=Promise);var i=new w(l(e,r,n,o),a);return t.isGeneratorFunction(r)?i:i.next().then((function(t){return t.done?t.value:i.next()}))},_(b),u(b,c,"Generator"),u(b,i,(function(){return this})),u(b,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var e=[];for(var r in t)e.push(r);return e.reverse(),function r(){for(;e.length;){var n=e.pop();if(n in t)return r.value=n,r.done=!1,r}return r.done=!0,r}},t.values=L,C.prototype={constructor:C,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(O),!t)for(var e in this)"t"===e.charAt(0)&&r.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function n(r,n){return i.type="throw",i.arg=t,e.next=r,n&&(e.method="next",e.arg=void 0),!!n}for(var o=this.tryEntries.length-1;o>=0;--o){var a=this.tryEntries[o],i=a.completion;if("root"===a.tryLoc)return n("end");if(a.tryLoc<=this.prev){var s=r.call(a,"catchLoc"),c=r.call(a,"finallyLoc");if(s&&c){if(this.prev<a.catchLoc)return n(a.catchLoc,!0);if(this.prev<a.finallyLoc)return n(a.finallyLoc)}else if(s){if(this.prev<a.catchLoc)return n(a.catchLoc,!0)}else{if(!c)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return n(a.finallyLoc)}}}},abrupt:function(t,e){for(var n=this.tryEntries.length-1;n>=0;--n){var o=this.tryEntries[n];if(o.tryLoc<=this.prev&&r.call(o,"finallyLoc")&&this.prev<o.finallyLoc){var a=o;break}}a&&("break"===t||"continue"===t)&&a.tryLoc<=e&&e<=a.finallyLoc&&(a=null);var i=a?a.completion:{};return i.type=t,i.arg=e,a?(this.method="next",this.next=a.finallyLoc,f):this.complete(i)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),f},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),O(r),f}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var n=r.completion;if("throw"===n.type){var o=n.arg;O(r)}return o}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,r){return this.delegate={iterator:L(t),resultName:e,nextLoc:r},"next"===this.method&&(this.arg=void 0),f}},t}function i(t,e,r,n,o,a,i){try{var s=t[a](i),c=s.value}catch(t){return void r(t)}s.done?e(c):Promise.resolve(c).then(n,o)}function s(t){return function(){var e=this,r=arguments;return new Promise((function(n,o){var a=t.apply(e,r);function s(t){i(a,n,o,s,c,"next",t)}function c(t){i(a,n,o,s,c,"throw",t)}s(void 0)}))}}function c(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function u(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?c(Object(r),!0).forEach((function(e){l(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):c(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}function l(t,e,r){return e in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}var p={middleware:["auth","check-permissions"],metaInfo:function(){return{title:this.$t("setup.role_and_permission.index.page_title")}},data:function(){return{breadcrumbsCurrent:"setup.role_and_permission.index.breadcrumbs_current",breadcrumbs:[{name:"setup.role_and_permission.index.breadcrumbs_first",url:"home"},{name:"setup.role_and_permission.index.breadcrumbs_second",url:"setup.index"},{name:"setup.role_and_permission.index.breadcrumbs_active",url:""}],query:"",perPage:10,developer:!1}},computed:u(u({},Object(n.b)("operations",["items","loading","pagination"])),Object(n.b)("auth",["user"])),watch:{query:function(t,e){""===t?this.getData():this.searchData()}},created:function(){this.getData(),this.developer=this.user.roles.includes("developer")},methods:{updatePerPager:function(){this.pagination.current_page=1,""===this.query?this.getData():this.searchData()},getData:function(){var t=this;return s(a().mark((function e(){var r;return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return t.$store.state.operations.loading=!0,r=t.pagination?t.pagination.current_page:1,e.next=4,t.$store.dispatch("operations/fetchData",{path:"/api/roles?page=",currentPage:r+"&perPage="+t.perPage});case 4:case"end":return e.stop()}}),e)})))()},paginate:function(){var t=this;return s(a().mark((function e(){return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:""===t.query?t.getData():t.searchData();case 1:case"end":return e.stop()}}),e)})))()},resetPagination:function(){var t=this;return s(a().mark((function e(){return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:t.pagination.current_page=1;case 1:case"end":return e.stop()}}),e)})))()},reload:function(){var t=this;return s(a().mark((function e(){return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:t.query="";case 1:case"end":return e.stop()}}),e)})))()},searchData:function(){var t=this;return s(a().mark((function e(){var r;return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return t.$store.state.operations.loading=!0,r=t.pagination?t.pagination.current_page:1,e.next=4,t.$store.dispatch("operations/searchData",{term:t.query,path:"/api/roles/search/",currentPage:r+"&perPage="+t.perPage});case 4:case"end":return e.stop()}}),e)})))()},print:function(){var t=this;return s(a().mark((function e(){return a().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,t.$htmlToPaper("printMe");case 2:case"end":return e.stop()}}),e)})))()},deleteData:function(t){var e=this;return s(a().mark((function r(){return a().wrap((function(r){for(;;)switch(r.prev=r.next){case 0:Swal.fire({title:e.$t("common.delete_title"),text:e.$t("common.delete_warning"),type:"warning",showCancelButton:!0,confirmButtonText:e.$t("common.delete_confirm_text")}).then((function(r){r.value&&e.$store.dispatch("operations/deleteData",{path:"/api/roles/",slug:t}).then((function(t){!0===t?Swal.fire(e.$t("common.deleted"),e.$t("common.delete_success"),"success"):Swal.fire(e.$t("common.failed"),e.$t("common.delete_failed"),"warning")}))}));case 1:case"end":return r.stop()}}),r)})))()}}},f=r(1),h=Object(f.a)(p,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("breadcrumbs",{attrs:{items:t.breadcrumbs,current:t.breadcrumbsCurrent}}),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-12"},[r("div",{staticClass:"w-100"},[r("div",[r("div",{staticClass:"row"},[r("div",{staticClass:"col-xl-2 col-md-3 col-4"},[r("search",{on:{"reset-pagination":function(e){return t.resetPagination()},reload:t.reload},model:{value:t.query,callback:function(e){t.query=e},expression:"query"}})],1),t._v(" "),r("div",{staticClass:"col-xl-10 col-md-9 col-8 text-right"},[r("div",{staticClass:"btn-group"},[r("a",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.$t("common.export_table"),expression:"$t('common.export_table')"}],staticClass:"btn btn-secondary",attrs:{href:"/setup/roles/pdf"}},[r("i",{staticClass:"fas fa-file-export"})]),t._v(" "),r("a",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.$t("common.print_table"),expression:"$t('common.print_table')"}],staticClass:"btn btn-info",on:{click:t.print}},[r("i",{staticClass:"fas fa-print"})]),t._v(" "),r("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"roles.create"}}},[t._v("\n                  "+t._s(t.$t("common.create"))+"\n                  "),r("i",{staticClass:"fas fa-plus-circle d-none d-sm-inline-block"})])],1)])])]),t._v(" "),r("div",{staticClass:"card-body p-0"},[r("div",{staticClass:"table-responsive table-custom mt-3",attrs:{id:"printMe"}},[r("table",{staticClass:"table"},[r("thead",[r("tr",[r("th",[t._v(t._s(t.$t("common.s_no")))]),t._v(" "),r("th",[t._v("\n                    "+t._s(t.$t("setup.role_and_permission.index.role_name"))+"\n                  ")]),t._v(" "),r("th",{staticClass:"text-right no-print"},[t._v("\n                    "+t._s(t.$t("common.action"))+"\n                  ")])])]),t._v(" "),r("tbody",[t._l(t.items,(function(e,n){return r("tr",{directives:[{name:"show",rawName:"v-show",value:t.items.length,expression:"items.length"}],key:n},[r("td",[t.pagination.current_page>1?r("span",[t._v("\n                      "+t._s(t.pagination.per_page*(t.pagination.current_page-1)+(n+1))+"\n                    ")]):r("span",[t._v(t._s(n+1))])]),t._v(" "),r("td",[t._v(t._s(e.name))]),t._v(" "),r("td",{staticClass:"text-right no-print"},[t.developer||"developer"!=e.slug&&"super-admin"!=e.slug?r("div",{staticClass:"btn-group"},[e&&e.slug?r("router-link",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.$t("common.edit"),expression:"$t('common.edit')"}],staticClass:"btn btn-info btn-sm",attrs:{to:{name:"roles.edit",params:{slug:e.slug}}}},[r("i",{staticClass:"fas fa-edit"})]):t._e(),t._v(" "),r("a",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.$t("common.delete"),expression:"$t('common.delete')"}],staticClass:"btn btn-danger btn-sm",attrs:{href:"#"},on:{click:function(r){return t.deleteData(e.slug)}}},[r("i",{staticClass:"fas fa-trash"})])],1):t._e()])])})),t._v(" "),r("tr",{directives:[{name:"show",rawName:"v-show",value:!t.loading&&!t.items.length,expression:"!loading && !items.length"}]},[r("td",{attrs:{colspan:"8"}},[r("EmptyTable")],1)])],2)])])]),t._v(" "),r("div",{staticClass:"dtable-footer"},[r("div",{staticClass:"form-group row display-per-page"},[r("label",[t._v(t._s(t.$t("per_page"))+" ")]),t._v(" "),r("div",[r("select",{directives:[{name:"model",rawName:"v-model",value:t.perPage,expression:"perPage"}],staticClass:"form-control form-control-sm ml-1",on:{change:[function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.perPage=e.target.multiple?r:r[0]},t.updatePerPager]}},[r("option",{attrs:{value:"10"}},[t._v("10")]),t._v(" "),r("option",{attrs:{value:"25"}},[t._v("25")]),t._v(" "),r("option",{attrs:{value:"50"}},[t._v("50")]),t._v(" "),r("option",{attrs:{value:"100"}},[t._v("100")])])])]),t._v(" "),t.pagination&&t.pagination.last_page>1?r("pagination",{staticClass:"justify-flex-end",attrs:{pagination:t.pagination,offset:5},on:{paginate:t.paginate}}):t._e()],1)])])])],1)}),[],!1,null,null,null);e.default=h.exports}}]);