var reload = true;
jQuery(function($)
{
    var _oldShow = $.fn.show;
    $.fn.show = function(speed, oldCallback)
    {
        return $(this).each(function()
        {
            var obj = $(this),
                    newCallback = function() {
            };
            // you can trigger a before show if you want
            if (reload == true)
            {
                obj.trigger('beforeShow');
            }
            // now use the old function to show the element passing the new callback
            _oldShow.apply(obj, [speed, newCallback]);
        });
    }
});

function loadclass(w) {
//    $("#classescontent").find("div").remove();
    $("#classescontent").load("markup/classes/" + w + ".html");
    $("#classestitle").load("markup/title/classes/" + w + ".html");
    $("#classesfeature").load("markup/feature/classes/" + w + ".html");
}

function loadcamp(w) {
    $("#campscontent").load("markup/camps/" + w + ".html");
    $("#campstitle").load("markup/title/camps/" + w + ".html");
    $("#campsfeature").load("markup/feature/camps/" + w + ".html");
}

function loadcontent(w) {
    var contentdiv = "#" + w + "content";
    $(contentdiv).load('markup/' + w + '.html');
}
function loadtitle(w) {
    var titlediv = "#" + w + "title";
    $(titlediv).load('markup/title/' + w + '.html');
}
function loadfeature(w) {
    var featurediv = "#" + w + "feature";
    $(featurediv).load('markup/feature/' + w + '.html');
}

function setDiv(w) {
    var whichdiv = "#" + w + "content";
    var whichtitlediv = "#" + w + "title";
    var whichfeaturediv = "#" + w + "feature";
    $(whichdiv).siblings('div').hide();
    $(whichtitlediv).siblings('div').hide();
    $(whichfeaturediv).siblings('div').hide();
    $(whichdiv).hide();
    $(whichdiv).fadeIn(500);
    $(whichtitlediv).fadeIn(500);
    $(whichtitlediv).css("display", "inline-block");
    $(whichfeaturediv).fadeIn(500);
}
function goto(w)
{
    $("#topnav").find("div").siblings().removeClass("navactivebtn");
    $("#leftnav").find("div").siblings().removeClass("lnavactivebtn");
    $("#topnav").find("#" + w).addClass("navactivebtn");
    $("#leftnav").find("#" + w).addClass("lnavactivebtn");
    debugger;
    var wd = w.substring(0, w.indexOf("btn"));
    setDiv(wd);
}
jQuery(function($) {
    $('#homecontent')
            .bind('beforeShow', function() {
        loadcontent('home');
    });
    $('#aboutcontent')
            .bind('beforeShow', function() {
        loadcontent('about');
    });
    $('#contactuscontent')
            .bind('beforeShow', function() {
        loadcontent('contactus');
    });
    $('#merchandisecontent')
            .bind('beforeShow', function() {
        loadcontent('merchandise');
    });
    $('#testimonialscontent')
            .bind('beforeShow', function() {
        loadcontent('testimonials');
    });
    $('#signupcontent')
            .bind('beforeShow', function() {
        loadcontent('signup');
    });
    $('#safetycontent')
            .bind('beforeShow', function() {
        loadcontent('safety');
    });
    $('#lessonscontent')
            .bind('beforeShow', function() {
        loadcontent('lessons');
    });
    $('#campscontent')
            .bind('beforeShow', function() {
        loadcontent('camps');
    });
    $('#classescontent')
            .bind('beforeShow', function() {
        loadcontent('classes');
    });
    $('#eventscontent')
            .bind('beforeShow', function() {
        loadcontent('events');
    });
    $('#surfcontent')
            .bind('beforeShow', function() {
        loadcontent('surf');
    });
    $('#homefeature')
            .bind('beforeShow', function() {
        loadfeature('home');
    });
    $('#aboutfeature')
            .bind('beforeShow', function() {
        loadfeature('about');
    });
    $('#contactusfeature')
            .bind('beforeShow', function() {
        loadfeature('contactus');
    });
    $('#merchandisefeature')
            .bind('beforeShow', function() {
        loadfeature('merchandise');
    });
    $('#testimonialsfeature')
            .bind('beforeShow', function() {
        loadfeature('testimonials');
    });
    $('#signupfeature')
            .bind('beforeShow', function() {
        loadfeature('signup');
    });
    $('#safetyfeature')
            .bind('beforeShow', function() {
        loadfeature('safety');
    });
    $('#lessonsfeature')
            .bind('beforeShow', function() {
        loadfeature('lessons');
    });
    $('#campsfeature')
            .bind('beforeShow', function() {
        loadfeature('camps');
    });
    $('#classesfeature')
            .bind('beforeShow', function() {
        loadfeature('classes');
    });
    $('#eventsfeature')
            .bind('beforeShow', function() {
        loadfeature('events');
    });
    $('#surffeature')
            .bind('beforeShow', function() {
        loadfeature('surf');
    });

    $('#hometitle')
            .bind('beforeShow', function() {
        loadtitle('home');
    });
    $('#abouttitle')
            .bind('beforeShow', function() {
        loadtitle('about');
    });
    $('#contactustitle')
            .bind('beforeShow', function() {
        loadtitle('contactus');
    });
    $('#merchandisetitle')
            .bind('beforeShow', function() {
        loadtitle('merchandise');
    });
    $('#testimonialstitle')
            .bind('beforeShow', function() {
        loadtitle('testimonials');
    });
    $('#signuptitle')
            .bind('beforeShow', function() {
        loadtitle('signup');
    });
    $('#safetytitle')
            .bind('beforeShow', function() {
        loadtitle('safety');
    });
    $('#lessonstitle')
            .bind('beforeShow', function() {
        loadtitle('lessons');
    });
    $('#campstitle')
            .bind('beforeShow', function() {
        loadtitle('camps');
    });
    $('#classestitle')
            .bind('beforeShow', function() {
        loadtitle('classes');
    });
    $('#eventstitle')
            .bind('beforeShow', function() {
        loadtitle('events');
    });
    $('#surftitle')
            .bind('beforeShow', function() {
        loadtitle('surf');
    });
});

$(document).ready(function() {
    setDiv('home');
});
