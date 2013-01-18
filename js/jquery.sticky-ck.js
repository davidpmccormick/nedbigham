// Sticky Plugin
// =============
// Author: Anthony Garand
// Improvements by German M. Bravo (Kronuz) and Ruud Kamphuis (ruudk)
// Improvements by Leonardo C. Daronco (daronco)
// Created: 2/14/2011
// Date: 2/12/2012
// Website: http://labs.anthonygarand.com/sticky
// Description: Makes an element on the page stick on the screen as you scroll
//              It will only set the 'top' and 'position' of your element, you
//              might need to adjust the width in some cases.
(function(e){var t={topSpacing:0,bottomSpacing:0,className:"is-sticky",wrapperClassName:"sticky-wrapper"},n=e(window),r=e(document),i=[],s=n.height(),o=function(){var e=n.scrollTop(),t=r.height(),o=t-s,u=e>o?o-e:0;for(var a=0;a<i.length;a++){var f=i[a],l=f.stickyWrapper.offset().top,c=l-f.topSpacing-u;if(e<=c){if(f.currentTop!==null){f.stickyElement.css("position","").css("top","").removeClass(f.className);f.stickyElement.parent().removeClass(f.className);f.currentTop=null}}else{var h=t-f.stickyElement.outerHeight()-f.topSpacing-f.bottomSpacing-e-u;h<0?h+=f.topSpacing:h=f.topSpacing;if(f.currentTop!==h){f.stickyElement.css("position","fixed").css("top",h).addClass(f.className);f.stickyElement.parent().addClass(f.className);f.currentTop=h}}}},u=function(){s=n.height()},a={init:function(n){var r=e.extend(t,n);return this.each(function(){var t=e(this),n=t.attr("id"),s=e("<div></div>").attr("id",n+"-sticky-wrapper").addClass(r.wrapperClassName);t.wrapAll(s);var o=t.parent();o.css("height",t.outerHeight());i.push({topSpacing:r.topSpacing,bottomSpacing:r.bottomSpacing,stickyElement:t,currentTop:null,stickyWrapper:o,className:r.className})})},update:o};if(window.addEventListener){window.addEventListener("scroll",o,!1);window.addEventListener("resize",u,!1)}else if(window.attachEvent){window.attachEvent("onscroll",o);window.attachEvent("onresize",u)}e.fn.sticky=function(t){if(a[t])return a[t].apply(this,Array.prototype.slice.call(arguments,1));if(typeof t=="object"||!t)return a.init.apply(this,arguments);e.error("Method "+t+" does not exist on jQuery.sticky")};e(function(){setTimeout(o,0)})})(jQuery);