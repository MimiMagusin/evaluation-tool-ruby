class BatchesController < ApplicationController

    def index
      @batches = Batch.all
    end

    def show
      @batch = Batch.find(params[:id])
    end

    def new
      @batch = Batch.new
    end

    def create
      @batch = Batch.new(batch_params)

      if @batch.save
         redirect_to @batch
      else
         render 'new'
      end
    end

    def edit
      @batch = Batch.find(params[:id])
    end

    def update
      @batch = Batch.find(params[:id])

      if @batch.update_attributes(batch_params)
        redirect_to @batch
      else
        render 'edit'
      end
    end

    def destroy
      @batch = Batch.find(params[:id])

      @batch.destroy

      redirect_to batches_path
    end


    private

    def batch_params
      params.require(:batch).permit(:name, :start_date, :end_date)
    end

end
