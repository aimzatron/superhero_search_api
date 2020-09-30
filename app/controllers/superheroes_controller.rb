class SuperheroesController < ApplicationController
  def search
    Search.create(criteria: params[:name])
    @superheroes = SuperheroApi::Base.find(params[:name])
    if @superheroes.to_json.include?("error")
      render nothing: true, status: :bad_request
    else
      render json: @superheroes.to_json, cached: true
    end
  end
end
