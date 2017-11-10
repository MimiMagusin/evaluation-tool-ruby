class EvaluationsController < ApplicationController

    def index
      @evaluations = Evaluation.all
    end

    def show
      @evaluation = Evaluation.find(params[:id])
    end

    def new
      @evaluation = Evaluation.new
    end

    def create
      @evaluation = Evaluation.new(evaluation_params)

      if @evaluation.save
         redirect_to root_path
      else
         render 'new'
      end
    end

    private

    def evaluation_params
      params.require(:evaluation).permit(:color, :comment, :student_id)
    end
end
