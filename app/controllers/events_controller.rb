class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.upcoming
    @page_title = ' | Events'
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end
  
  def past
    @events = Event.past
    @page_title = ' | Past Events'
    respond_to do |format|
      format.html { render 'index'}
      format.json { render json: @events }
    end

  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    @page_title = " | Events | #{@event.date.to_formatted_s(:long_ordinal)}"
    @og_title = "#{@event.date.to_formatted_s(:long_ordinal)}: #{@event.title} | #{@event.location} | #{@event.venue}"
    @og_url = request.original_url
    @og_description = "#{@event.body}"
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

end
