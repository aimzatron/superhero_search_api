class SearchesController < ApplicationController

  def index
    @searches = Search.all.order(sort_column + " " + sort_direction)
    render json: @searches.paginate(page: params[:page], per_page: 10), cached: true
  end

  private

  def sort_column
    Search.column_names.include?(params[:sort]) ? params[:sort] : "criteria"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
