!function(r,e){if("function"==typeof define&&define.amd)define([],e);else if("object"==typeof exports){var n=e();"object"==typeof module&&module&&module.exports&&(exports=module.exports=n),exports.randomColor=n}else r.randomColor=e()}(this,function(){function r(r){var e=o(r.hue),n=f(e);return 0>n&&(n=360+n),n}function e(r,e){if("random"===e.luminosity)return f([0,100]);if("monochrome"===e.hue)return 0;var n=u(r),t=n[0],a=n[1];switch(e.luminosity){case"bright":t=55;break;case"dark":t=a-10;break;case"light":a=55}return f([t,a])}function n(r,e,n){var t=a(r,e),o=100;switch(n.luminosity){case"dark":o=t+20;break;case"light":t=(o+t)/2;break;case"random":t=0,o=100}return f([t,o])}function t(r,e){switch(e.format){case"hsvArray":return r;case"hslArray":return g(r);case"hsl":var n=g(r);return"hsl("+n[0]+", "+n[1]+"%, "+n[2]+"%)";case"rgbArray":return h(r);case"rgb":var t=h(r);return"rgb("+t.join(", ")+")";default:return c(r)}}function a(r,e){for(var n=i(r).lowerBounds,t=0;t<n.length-1;t++){var a=n[t][0],o=n[t][1],u=n[t+1][0],f=n[t+1][1];if(e>=a&&u>=e){var c=(f-o)/(u-a),s=o-c*a;return c*e+s}}return 0}function o(r){if("number"==typeof parseInt(r)){var e=parseInt(r);if(360>e&&e>0)return[e,e]}if("string"==typeof r&&v[r]){var n=v[r];if(n.hueRange)return n.hueRange}return[0,360]}function u(r){return i(r).saturationRange}function i(r){r>=334&&360>=r&&(r-=360);for(var e in v){var n=v[e];if(n.hueRange&&r>=n.hueRange[0]&&r<=n.hueRange[1])return v[e]}return"Color not found"}function f(r){return Math.floor(r[0]+Math.random()*(r[1]+1-r[0]))}function c(r){function e(r){var e=r.toString(16);return 1==e.length?"0"+e:e}var n=h(r),t="#"+e(n[0])+e(n[1])+e(n[2]);return t}function s(r,e,n){var t=n[0][0],a=n[n.length-1][0],o=n[n.length-1][1],u=n[0][1];v[r]={hueRange:e,lowerBounds:n,saturationRange:[t,a],brightnessRange:[o,u]}}function l(){s("monochrome",null,[[0,0],[100,0]]),s("red",[-26,18],[[20,100],[30,92],[40,89],[50,85],[60,78],[70,70],[80,60],[90,55],[100,50]]),s("orange",[19,46],[[20,100],[30,93],[40,88],[50,86],[60,85],[70,70],[100,70]]),s("yellow",[47,62],[[25,100],[40,94],[50,89],[60,86],[70,84],[80,82],[90,80],[100,75]]),s("green",[63,178],[[30,100],[40,90],[50,85],[60,81],[70,74],[80,64],[90,50],[100,40]]),s("blue",[179,257],[[20,100],[30,86],[40,80],[50,74],[60,60],[70,52],[80,44],[90,39],[100,35]]),s("purple",[258,282],[[20,100],[30,87],[40,79],[50,70],[60,65],[70,59],[80,52],[90,45],[100,42]]),s("pink",[283,334],[[20,100],[30,90],[40,86],[60,84],[80,80],[90,75],[100,73]])}function h(r){var e=r[0];0===e&&(e=1),360===e&&(e=359),e/=360;var n=r[1]/100,t=r[2]/100,a=Math.floor(6*e),o=6*e-a,u=t*(1-n),i=t*(1-o*n),f=t*(1-(1-o)*n),c=256,s=256,l=256;switch(a){case 0:c=t,s=f,l=u;break;case 1:c=i,s=t,l=u;break;case 2:c=u,s=t,l=f;break;case 3:c=u,s=i,l=t;break;case 4:c=f,s=u,l=t;break;case 5:c=t,s=u,l=i}var h=[Math.floor(255*c),Math.floor(255*s),Math.floor(255*l)];return h}function g(r){var e=r[0],n=r[1]/100,t=r[2]/100,a=(2-n)*t;return[e,Math.round(n*t/(1>a?a:2-a)*1e4)/100,a/2*100]}var v={};l();var d=function(a){a=a||{};var o,u,i;if(null!=a.count){var f=a.count,c=[];for(a.count=null;f>c.length;)c.push(d(a));return a.count=f,c}return o=r(a),u=e(o,a),i=n(o,u,a),t([o,u,i],a)};return d});
