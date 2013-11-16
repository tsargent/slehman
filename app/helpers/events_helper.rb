module EventsHelper


# &#8594;
# &#8592;

  def prev_event
    if @event.prev
      link_to "&#8592; #{format_date @event.prev.date}: #{@event.prev.title}".html_safe, event_url(@event.prev), class: 'prev'
    end
  end

  def next_event 
    if @event.next
      link_to "#{format_date @event.next.date}: #{@event.next.title} &#8594;".html_safe, event_url(@event.next), class: 'next'
    end
  end
  
  def do_event_title(event)
    title = "#{event.title} @ "
    venue = !event.venue.blank? ? "#{event.venue}, " : ""
    location = "#{event.location}"
    title + venue + location
  end


end