class EventsController < ApplicationController
    
    before_action :set_event, :only => [:show, :edit, :update, :destroy]
    
    def index
        @events = Event.page(params[:page]).per(5)
    end
    
    def new
        @event = Event.new
    end
    
    def create
        @event = Event.new(event_params)
        flash[:notice] = "Event was successfully created"
        if @event.save
            redirect_to events_url
        else
            render :action => :new
        end
    end

    def show
        @page_title = @event.name
    end

    def edit
    end

    def update
        flash[:notice] = "Event was successfully updated"
        if @event.update(event_params)
            redirect_to event_url(@event)
        else
            render :action => :edit
        end
    end

    def destroy
        flash[:notice] = "Event was successfully deleted"
        @event.destroy
        redirect_to :action => :index
    end

    private

    def event_params
        params.require(:event).permit(:name, :description)
    end

    def set_event
        @event = Event.find(params[:id])
    end
end
