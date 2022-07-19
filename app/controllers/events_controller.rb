class EventsController < ApplicationController
    
    def new
        @event = Event.new
    end

    
    def create
        @event = Event.new(event_params)
        if @event.save
            flash[:notice] = "Event created!"
            redirect_to @event
        else
            flash.now[:alert] = "Event not created"
            render "new"
        end
    end

private

    def event_params
        params.require(:event).permit(:title, :description, :start_date, :end_date, :venue, :location)
    end

end


#    
        
          
          

          
#      end

#      def show
#        @event = Event.find(params[:id])
#      end

#      def index
#        @events = Event.all
#      end


    

#    end



#    def index
#     if params[:query].present?
#        @events = Event.search(params[:query])
#      else
#        @events = Event.order(created_at: :desc).paginate(page: params[:page], per_page: 4)
#      end
#      @categories = Category.order(:name)
#      authorize @events, :index?
#    end
  
    
  
    
  
    
  
  
#    def edit
#      authorize @event, :edit?
#    end
  
#    def update
#      authorize @event, :update?
#      if @event.update(event_params)
#        flash[:notice] = "Event updated!"
#        redirect_to @event
#      else
#        flash.now[:alert] = "Event not updated!"
#        render "edit"
#      end
#    end
  
#    def destroy
#      authorize @event, :destroy?
#      @event.destroy
#      flash[:alert] = "Event deleted successfully"
#      redirect_to events_url
#    end
  
  
  
#    private
  
#      def set_event
#        @event = Event.friendly.find(params[:id])
  
        # authorize @event
  
#      rescue ActiveRecord::RecordNotFound
#        flash[:alert] = "The page you just requested does not exist"
#        redirect_to events_path
#      end
  
#      def event_params
#        params.require(:event).permit(:title, :description, :start_date, :end_date, :venue, :location, :image, :category_id, :seats, :tag_list)
#      end
  
      # def authorize_owner!
      #   authenticate_user!
  
      #   unless @event.organizer == current_user
      #     flash[:alert] = "You do not have enough permission to '#{action_name}' the '#{@event.title.upcase}' event"
      #     redirect_to events_path
      #   end

  
  
  