class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def create
    #@event = Event.new(params[:event])
    #以下都請修改
    @event = Event.new(event_params)
    @event.save

    redirect_to :action => :index
  end
  def show
    @event = Event.find(params[:id])
  end
  def edit
    @event = Event.find(params[:id])
  end
  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])

    redirect_to :action => :show, :id => @event
  end
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to :action => :index
  end
  private
    def event_params
      params.require(:event).permit(:id, :name, :description)
    end
end

