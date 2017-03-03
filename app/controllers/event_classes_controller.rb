class EventClassesController < ApplicationController
  # before_action :set_eventclass, only: [:show, :edit, :update, :destroy]

  # GET /eventclasses
  def index
    @event_classes = EventClass.all
  end

  # GET /eventclasses/1
  def show
    @event_class = EventClass.find(params[:id])
  end

  # GET /eventclasses/new
  def new
    @event_class = EventClass.new
  end

  # GET /eventclasses/1/edit
  def edit
  end

  # POST /eventclasses
  def create
    @event_class = EventClass.create(event_class_params)
    redirect_to event_classes_path
  end

  # PATCH/PUT /eventclasses/1
  def update
    # @eventclass.update(eventclass_params)
  end

  # DELETE /eventclasses/1
  def destroy
    # @eventclass.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventclass
      @eventclass = Eventclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_class_params
      params.require(:event_class).permit(:name, :int_metric, :bool_metric, :time_metric)
    end
end
