(function() {
  $(document).ready(function() {
    var timelineAnimate;
    timelineAnimate = function(elem) {
      return $(".timeline.animated .timeline-row").each(function(i) {
        var bottom_of_object, bottom_of_window;
        bottom_of_object = $(this).position().top + $(this).outerHeight();
         console.log($(this).position().top,$(this).outerHeight(),i)
        bottom_of_window = $(window).scrollTop() + $(window).height();
        console.log(bottom_of_window)
        if (bottom_of_window > bottom_of_object) {
          return $(this).addClass("active");
        }
      });
    };
    timelineAnimate();
    return $(window).scroll(function() {
      return timelineAnimate();
    });
  });

}).call(this);
