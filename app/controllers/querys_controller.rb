class QuerysController < ApplicationController
  def index
    @querys = Query.all
  end

  def new
    @query = Query.new
  end

  def create
    @query = Query.new(params.require(:query).permit(:title, :body))
    if @query.save
      flash[:notice] = "Query was saved."
      redirect_to @query
    else
      flash[:error] = "There was an error saving the query. Please try again"
      render :new
    end
  end

  def show
  #  @query = Query.find(params[:id])
  end

  def edit
    @query = Query.find(params[:id])
  end
  

  def update
    @query = Query.find(params[:id])
    if @query.update_attributes(params.require(:query).permit(:title, :body))
      flash[:notice] = "Query was updated"
      redirect_to @query
    else
      flash[:error] = "There was an error saving the query. Please try again."
      render :edit
    end
  end

  def destroy
  end
end
