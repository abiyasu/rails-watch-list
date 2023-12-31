class ListsController < ApplicationController
  before_action :find_list, only: [ :show, :destroy ]
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save!
    redirect_to list_path(@list)
  end

  def destroy
    @list.destroy
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
    params.require(:list).permit(:name, :photo)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
