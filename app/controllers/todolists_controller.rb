class TodolistsController < ApplicationController
  
  respond_to :html, :js
  
  def index
    @todolists = Todolist.all
  end

  def show
    @todolist = Todolist.find(params[:id])
  end

  def new
    @todolist = Todolist.new

  end

  def create
  @todolist = Todolist.new(todolist_params)
  
  if @todolist.save
    flash[:notice] = "Your to-do item was saved."
    redirect_to todolists_url 
  else
    flash[:error] = "There was an error saving your to-do item. Please try again."
    render :new
  end
  end

def destroy
    
    @todolist = Todolist.find(params[:id])
    @todolist.destroy
    
    flash[:notice] = "Successfully destroyed post."
    
    respond_to do |format|
      format.js 
    end
end

  private

  def todolist_params
    params.require(:todolist).permit(:description, :completed)
  end

  def edit
  end
end
