function calendar(){

	'use strict';

	var initCalendarDragNDrop = function() {
		$('#external-events div.external-event').each(function() {

			// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
			// it doesn't need to have a start or end
			var eventObject = {
				title: $.trim($(this).text()) // use the element's text as the event title
			};

			// store the Event Object in the DOM element so we can get to it later
			$(this).data('eventObject', eventObject);

			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex: 999,
				revert: true,      // will cause the event to go back to its
				revertDuration: 0  //  original position after the drag
			});

		});
	};

	var initCalendar = function() {
		var $calendar = $('#calendar');
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		var event = [];
		$.ajax({
		    url:"/i94/",
		    type:"GET",
		    data:{P_id:patientId},
		    dataType:"json",
            async: false,
            success:function(json_data){
//                console.log(json_data);
                $.each(json_data,function (index,item) {
                var mess = new Array();
                    mess['title'] = preHead(item.regular)+"规律用药";
					mess['start'] = item.date;
					mess['allDay'] = true;
					mess['className'] = color(item.regular, 0);
				event.push(mess);
//				console.log(event);

                });
            },
            error: function(json_data){
                errorProcess(json_data);
            }
		});

		$.ajax({
		    url:"/i95/",
		    type:"GET",
		    data:{P_id:patientId},
		    dataType:"json",
            async: false,
            success:function(json_data){
//                console.log(json_data);
                $.each(json_data,function (index,item) {
                var mess = new Array();
                    mess['title'] = preHead(item.acuteExac)+"急性加重";
					mess['start'] = item.date;
					mess['allDay'] = true;
					mess['className'] = color(item.acuteExac,1);
				event.push(mess);

                });
            },
            error: function(json_data){
                errorProcess(json_data);
            }
		});

		$.ajax({
		    url:"/i99/",
		    type:"GET",
		    data:{P_id:patientId},
		    dataType:"json",
            async: false,
            success:function(json_data){
//                console.log(json_data);
                $.each(json_data,function (index,item) {
                var mess = new Array();
                    mess['title'] = str4MC(item.ch);
					mess['start'] = item.date;
					mess['allDay'] = true;
					mess['className'] = "fc-event-warning";
				event.push(mess);
//				console.log(event);

                });
            },
            error: function(json_data){
                errorProcess(json_data);
            }
		});

		$.ajax({
		    url:"/i102/",
		    type:"GET",
		    data:{P_id:patientId},
		    dataType:"json",
            async: false,
            success:function(json_data){
//                console.log(json_data);
                $.each(json_data,function (index,item) {
                    var mess = new Array();
//                    console.log(item,item['type'])
//                    console.log(item.type);
//                    console.log(str4AI("0"))
                    mess['title'] = str4AI(item.type);
					mess['start'] = item.date;
					mess['allDay'] = true;
					mess['className'] = "fc-event-info";
				    event.push(mess);
//				console.log(event);

                });
            },
            error: function(json_data){
                errorProcess(json_data);
            }
		});


		$calendar.fullCalendar({
			header: {
				left: 'title',
				right: 'prev,today,next,basicWeek,month'
			},

			timeFormat: 'h:mm',

			themeButtonIcons: {
				prev: 'fa fa-caret-left',
				next: 'fa fa-caret-right',
			},

			editable: true,
			droppable: true, // this allows things to be dropped onto the calendar !!!
			drop: function(date, allDay) { // this function is called when something is dropped
				var $externalEvent = $(this);
				// retrieve the dropped element's stored Event Object
				var originalEventObject = $externalEvent.data('eventObject');

				// we need to copy it, so that multiple events don't have a reference to the same object
				var copiedEventObject = $.extend({}, originalEventObject);

				// assign it the date that was reported
				copiedEventObject.start = date;
				copiedEventObject.allDay = allDay;
				copiedEventObject.className = $externalEvent.attr('data-event-class');

				// render the event on the calendar
				// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
				$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

				// is the "remove after drop" checkbox checked?
				if ($('#RemoveAfterDrop').is(':checked')) {
					// if so, remove the element from the "Draggable Events" list
					$(this).remove();
				}

			},
			events: event
//[
//				{
//					title: 'All Day Event',
//					start: new Date(y, m, 5)
//				},
//				{
//					title: 'Long Event',
//					start: new Date(y, m, d-6),
//					end: new Date(y, m, d-1)
//				},
//				{
//					id: 999,
//					title: 'Repeating Event',
//					start: new Date(y, m, d-4, 17, 0),
//					allDay: false
//				},
//				{
//					id: 999,
//					title: 'Repeating Event',
//					start: new Date(y, m, d+10, 16, 0),
//					allDay: false
//				},
//				{
//					title: 'Meeting',
//					start: new Date(y, m, d, 9, 29),
//					allDay: false
//				},
//				{
//					title: 'Lunch',
//					start: new Date(y, m, d, 11, 0),
//					end: new Date(y, m, d, 13, 0),
//					allDay: false,
//					className: 'fc-event-danger'
//				},
//				{
//					title: 'Birthday Party',
//					start: new Date(y, m, d+2, 20, 0),
//					end: new Date(y, m, d+2, 23, 30),
//					allDay: false
//				},
//				{
//					title: 'Click for Google',
//					start: new Date(y, m, 27),
//					end: new Date(y, m, 28),
//					url: 'http://google.com/'
//				}
//			]
		});

		// FIX INPUTS TO BOOTSTRAP VERSIONS
		var $calendarButtons = $calendar.find('.fc-header-right > span');
		$calendarButtons
			.filter('.fc-button-prev, .fc-button-today, .fc-button-next')
				.wrapAll('<div class="btn-group mt-sm mr-md mb-sm ml-sm"></div>')
				.parent()
				.after('<br class="hidden"/>');

		$calendarButtons
			.not('.fc-button-prev, .fc-button-today, .fc-button-next')
				.wrapAll('<div class="btn-group mb-sm mt-sm"></div>');

		$calendarButtons
			.attr({ 'class': 'btn btn-sm btn-default' });
	};

	$(function() {
		initCalendar();
		initCalendarDragNDrop();
	});
}

function color(input, sign){
    if(sign == 0){
        if(input=="0"){
            return "fc-event-danger";
        }
        else{
            return "fc-event-success";
        }
    }
    else{
        if(input=="1"){
            return "fc-event-danger";
        }
        else{
            return "fc-event-success";
        }
    }
}
function preHead(input){
    if(input=="1"){
        return "今日";
    }
    else{
        return "今日未";
    }
}
// info success warning primary
function str4MC(input){
    if(input=="1"){
        return "今日换药";
    }
    else if(input=="2"){
        return "今日停用药";
    }
}

function str4AI(input){
    if(input=="0"){
        return "今日有新的门诊记录";
    }
    else if(input=="1"){
        return "今日有新的急诊记录";
    }
    else if(input=="2"){
        return "今日有新的住院记录";
    }
}
