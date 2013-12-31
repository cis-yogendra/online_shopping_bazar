class EventsController < ApplicationController
	def index
		@events = Event.all
	end
	def new
		@event = Event.new
	end
	def show
		@event = Event.find(params[:id])
	end
	def edit
		@event = Event.find(params[:id])
	end
	def create
		@event = Event.new(params[:event])
		if @event.save
			redirect_to event_path(@event)
		else
			render 'new'
		end
	end
	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(params[:event])
			redirect_to event_path(@event)
		else
			render 'index'
		end
	end
	def destroy
		@event = Event.find(params[:id])
		if @event.delete
			redirect_to :action => "index"
		else
			render 'index'
		end
	end
end
