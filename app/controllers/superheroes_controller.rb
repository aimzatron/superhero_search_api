class SuperheroesController < Application SuperheroesController

  def show
    @superhero = SuperheroApi::Base.find(params[:name])
  end

end
