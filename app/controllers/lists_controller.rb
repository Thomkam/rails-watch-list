class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all
  end

  def new
    @lists = List.new
  end

  def create
    @list = List.new(list_params)
    @list = List.find(params[:list_id])
    @list.list = @list
    if @list.save
      redirect_to list_path(@list)
    else
      render 'new'
    end
  end
end
