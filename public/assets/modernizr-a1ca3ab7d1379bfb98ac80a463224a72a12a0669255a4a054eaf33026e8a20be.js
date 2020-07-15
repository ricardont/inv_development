window.Modernizr=function(e,a,i){function n(e){k.cssText=e}function r(e,a){return n(x.join(e+";")+(a||""))}function t(e,a){return typeof e===a}function s(e,a){return!!~(""+e).indexOf(a)}function o(e,a){for(var n in e){var r=e[n];if(!s(r,"-")&&k[r]!==i)return"pfx"!=a||r}return!1}function l(e,a,n){for(var r in e){var s=a[e[r]];if(s!==i)return n===!1?e[r]:t(s,"function")?s.bind(n||a):s}return!1}function c(e,a,i){var n=e.charAt(0).toUpperCase()+e.slice(1),r=(e+" "+q.join(n+" ")+n).split(" ");return t(a,"string")||t(a,"undefined")?o(r,a):(r=(e+" "+C.join(n+" ")+n).split(" "),l(r,a,i))}function d(){g.input=function(i){for(var n=0,r=i.length;n<r;n++)D[i[n]]=!!(i[n]in v);return D.list&&(D.list=!(!a.createElement("datalist")||!e.HTMLDataListElement)),D}("autocomplete autofocus list placeholder max min multiple pattern required step".split(" ")),g.inputtypes=function(e){for(var n,r,t,s=0,o=e.length;s<o;s++)v.setAttribute("type",r=e[s]),n="text"!==v.type,n&&(v.value=w,v.style.cssText="position:absolute;visibility:hidden;",/^range$/.test(r)&&v.style.WebkitAppearance!==i?(b.appendChild(v),t=a.defaultView,n=t.getComputedStyle&&"textfield"!==t.getComputedStyle(v,null).WebkitAppearance&&0!==v.offsetHeight,b.removeChild(v)):/^(search|tel)$/.test(r)||(n=/^(url|email)$/.test(r)?v.checkValidity&&v.checkValidity()===!1:v.value!=w)),_[e[s]]=!!n;return _}("search tel url email datetime date month week time datetime-local number range color".split(" "))}var u,h,m="2.7.1",g={},p=!0,b=a.documentElement,f="modernizr",y=a.createElement(f),k=y.style,v=a.createElement("input"),w=":)",j={}.toString,x=" -webkit- -moz- -o- -ms- ".split(" "),z="Webkit Moz O ms",q=z.split(" "),C=z.toLowerCase().split(" "),S={svg:"http://www.w3.org/2000/svg"},T={},_={},D={},E=[],A=E.slice,I=function(e,i,n,r){var t,s,o,l,c=a.createElement("div"),d=a.body,u=d||a.createElement("body");if(parseInt(n,10))for(;n--;)o=a.createElement("div"),o.id=r?r[n]:f+(n+1),c.appendChild(o);return t=["&#173;",'<style id="s',f,'">',e,"</style>"].join(""),c.id=f,(d?c:u).innerHTML+=t,u.appendChild(c),d||(u.style.background="",u.style.overflow="hidden",l=b.style.overflow,b.style.overflow="hidden",b.appendChild(u)),s=i(c,e),d?c.parentNode.removeChild(c):(u.parentNode.removeChild(u),b.style.overflow=l),!!s},N=function(a){var i=e.matchMedia||e.msMatchMedia;if(i)return i(a).matches;var n;return I("@media "+a+" { #"+f+" { position: absolute; } }",function(a){n="absolute"==(e.getComputedStyle?getComputedStyle(a,null):a.currentStyle).position}),n},L=function(){function e(e,r){r=r||a.createElement(n[e]||"div"),e="on"+e;var s=e in r;return s||(r.setAttribute||(r=a.createElement("div")),r.setAttribute&&r.removeAttribute&&(r.setAttribute(e,""),s=t(r[e],"function"),t(r[e],"undefined")||(r[e]=i),r.removeAttribute(e))),r=null,s}var n={select:"input",change:"input",submit:"form",reset:"form",error:"img",load:"img",abort:"img"};return e}(),$={}.hasOwnProperty;h=t($,"undefined")||t($.call,"undefined")?function(e,a){return a in e&&t(e.constructor.prototype[a],"undefined")}:function(e,a){return $.call(e,a)},Function.prototype.bind||(Function.prototype.bind=function(e){var a=this;if("function"!=typeof a)throw new TypeError;var i=A.call(arguments,1),n=function(){if(this instanceof n){var r=function(){};r.prototype=a.prototype;var t=new r,s=a.apply(t,i.concat(A.call(arguments)));return Object(s)===s?s:t}return a.apply(e,i.concat(A.call(arguments)))};return n}),T.flexbox=function(){return c("flexWrap")},T.flexboxlegacy=function(){return c("boxDirection")},T.canvas=function(){var e=a.createElement("canvas");return!(!e.getContext||!e.getContext("2d"))},T.canvastext=function(){return!(!g.canvas||!t(a.createElement("canvas").getContext("2d").fillText,"function"))},T.webgl=function(){return!!e.WebGLRenderingContext},T.touch=function(){var i;return"ontouchstart"in e||e.DocumentTouch&&a instanceof DocumentTouch?i=!0:I(["@media (",x.join("touch-enabled),("),f,")","{#modernizr{top:9px;position:absolute}}"].join(""),function(e){i=9===e.offsetTop}),i},T.geolocation=function(){return"geolocation"in navigator},T.postmessage=function(){return!!e.postMessage},T.websqldatabase=function(){return!!e.openDatabase},T.indexedDB=function(){return!!c("indexedDB",e)},T.hashchange=function(){return L("hashchange",e)&&(a.documentMode===i||a.documentMode>7)},T.history=function(){return!(!e.history||!history.pushState)},T.draganddrop=function(){var e=a.createElement("div");return"draggable"in e||"ondragstart"in e&&"ondrop"in e},T.websockets=function(){return"WebSocket"in e||"MozWebSocket"in e},T.rgba=function(){return n("background-color:rgba(150,255,150,.5)"),s(k.backgroundColor,"rgba")},T.hsla=function(){return n("background-color:hsla(120,40%,100%,.5)"),s(k.backgroundColor,"rgba")||s(k.backgroundColor,"hsla")},T.multiplebgs=function(){return n("background:url(https://),url(https://),red url(https://)"),/(url\s*\(.*?){3}/.test(k.background)},T.backgroundsize=function(){return c("backgroundSize")},T.borderimage=function(){return c("borderImage")},T.borderradius=function(){return c("borderRadius")},T.boxshadow=function(){return c("boxShadow")},T.textshadow=function(){return""===a.createElement("div").style.textShadow},T.opacity=function(){return r("opacity:.55"),/^0.55$/.test(k.opacity)},T.cssanimations=function(){return c("animationName")},T.csscolumns=function(){return c("columnCount")},T.cssgradients=function(){var e="background-image:",a="gradient(linear,left top,right bottom,from(#9f9),to(white));",i="linear-gradient(left top,#9f9, white);";return n((e+"-webkit- ".split(" ").join(a+e)+x.join(i+e)).slice(0,-e.length)),s(k.backgroundImage,"gradient")},T.cssreflections=function(){return c("boxReflect")},T.csstransforms=function(){return!!c("transform")},T.csstransforms3d=function(){var e=!!c("perspective");return e&&"webkitPerspective"in b.style&&I("@media (transform-3d),(-webkit-transform-3d){#modernizr{left:9px;position:absolute;height:3px;}}",function(a){e=9===a.offsetLeft&&3===a.offsetHeight}),e},T.csstransitions=function(){return c("transition")},T.fontface=function(){var e;return I('@font-face {font-family:"font";src:url("https://")}',function(i,n){var r=a.getElementById("smodernizr"),t=r.sheet||r.styleSheet,s=t?t.cssRules&&t.cssRules[0]?t.cssRules[0].cssText:t.cssText||"":"";e=/src/i.test(s)&&0===s.indexOf(n.split(" ")[0])}),e},T.generatedcontent=function(){var e;return I(["#",f,"{font:0/0 a}#",f,':after{content:"',w,'";visibility:hidden;font:3px/1 a}'].join(""),function(a){e=a.offsetHeight>=3}),e},T.video=function(){var e=a.createElement("video"),i=!1;try{(i=!!e.canPlayType)&&(i=new Boolean(i),i.ogg=e.canPlayType('video/ogg; codecs="theora"').replace(/^no$/,""),i.h264=e.canPlayType('video/mp4; codecs="avc1.42E01E"').replace(/^no$/,""),i.webm=e.canPlayType('video/webm; codecs="vp8, vorbis"').replace(/^no$/,""))}catch(e){}return i},T.audio=function(){var e=a.createElement("audio"),i=!1;try{(i=!!e.canPlayType)&&(i=new Boolean(i),i.ogg=e.canPlayType('audio/ogg; codecs="vorbis"').replace(/^no$/,""),i.mp3=e.canPlayType("audio/mpeg;").replace(/^no$/,""),i.wav=e.canPlayType('audio/wav; codecs="1"').replace(/^no$/,""),i.m4a=(e.canPlayType("audio/x-m4a;")||e.canPlayType("audio/aac;")).replace(/^no$/,""))}catch(e){}return i},T.localstorage=function(){try{return localStorage.setItem(f,f),localStorage.removeItem(f),!0}catch(e){return!1}},T.sessionstorage=function(){try{return sessionStorage.setItem(f,f),sessionStorage.removeItem(f),!0}catch(e){return!1}},T.webworkers=function(){return!!e.Worker},T.applicationcache=function(){return!!e.applicationCache},T.svg=function(){return!!a.createElementNS&&!!a.createElementNS(S.svg,"svg").createSVGRect},T.inlinesvg=function(){var e=a.createElement("div");return e.innerHTML="<svg/>",(e.firstChild&&e.firstChild.namespaceURI)==S.svg},T.smil=function(){return!!a.createElementNS&&/SVGAnimate/.test(j.call(a.createElementNS(S.svg,"animate")))},T.svgclippaths=function(){return!!a.createElementNS&&/SVGClipPath/.test(j.call(a.createElementNS(S.svg,"clipPath")))};for(var R in T)h(T,R)&&(u=R.toLowerCase(),g[u]=T[R](),E.push((g[u]?"":"no-")+u));return g.input||d(),g.addTest=function(e,a){if("object"==typeof e)for(var n in e)h(e,n)&&g.addTest(n,e[n]);else{if(e=e.toLowerCase(),g[e]!==i)return g;a="function"==typeof a?a():a,"undefined"!=typeof p&&p&&(b.className+=" "+(a?"":"no-")+e),g[e]=a}return g},n(""),y=v=null,function(e,a){function i(e,a){var i=e.createElement("p"),n=e.getElementsByTagName("head")[0]||e.documentElement;return i.innerHTML="x<style>"+a+"</style>",n.insertBefore(i.lastChild,n.firstChild)}function n(){var e=y.elements;return"string"==typeof e?e.split(" "):e}function r(e){var a=f[e[p]];return a||(a={},b++,e[p]=b,f[b]=a),a}function t(e,i,n){if(i||(i=a),d)return i.createElement(e);n||(n=r(i));var t;return t=n.cache[e]?n.cache[e].cloneNode():g.test(e)?(n.cache[e]=n.createElem(e)).cloneNode():n.createElem(e),!t.canHaveChildren||m.test(e)||t.tagUrn?t:n.frag.appendChild(t)}function s(e,i){if(e||(e=a),d)return e.createDocumentFragment();i=i||r(e);for(var t=i.frag.cloneNode(),s=0,o=n(),l=o.length;s<l;s++)t.createElement(o[s]);return t}function o(e,a){a.cache||(a.cache={},a.createElem=e.createElement,a.createFrag=e.createDocumentFragment,a.frag=a.createFrag()),e.createElement=function(i){return y.shivMethods?t(i,e,a):a.createElem(i)},e.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+n().join().replace(/[\w\-]+/g,function(e){return a.createElem(e),a.frag.createElement(e),'c("'+e+'")'})+");return n}")(y,a.frag)}function l(e){e||(e=a);var n=r(e);return!y.shivCSS||c||n.hasCSS||(n.hasCSS=!!i(e,"article,aside,dialog,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}mark{background:#FF0;color:#000}template{display:none}")),d||o(e,n),e}var c,d,u="3.7.0",h=e.html5||{},m=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,g=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,p="_html5shiv",b=0,f={};!function(){try{var e=a.createElement("a");e.innerHTML="<xyz></xyz>",c="hidden"in e,d=1==e.childNodes.length||function(){a.createElement("a");var e=a.createDocumentFragment();return"undefined"==typeof e.cloneNode||"undefined"==typeof e.createDocumentFragment||"undefined"==typeof e.createElement}()}catch(e){c=!0,d=!0}}();var y={elements:h.elements||"abbr article aside audio bdi canvas data datalist details dialog figcaption figure footer header hgroup main mark meter nav output progress section summary template time video",version:u,shivCSS:h.shivCSS!==!1,supportsUnknownElements:d,shivMethods:h.shivMethods!==!1,type:"default",shivDocument:l,createElement:t,createDocumentFragment:s};e.html5=y,l(a)}(this,a),g._version=m,g._prefixes=x,g._domPrefixes=C,g._cssomPrefixes=q,g.mq=N,g.hasEvent=L,g.testProp=function(e){return o([e])},g.testAllProps=c,g.testStyles=I,g.prefixed=function(e,a,i){return a?c(e,a,i):c(e,"pfx")},b.className=b.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(p?" js "+E.join(" "):""),g}(this,this.document);