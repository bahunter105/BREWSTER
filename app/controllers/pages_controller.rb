class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @recipe = BeerRecipe.last
    @user = current_user
    gon.labels = [
      'Snoring',
      'Drinking',
      'Sleeping',
      'Designing',
      'Coding',
      'Cycling',
      'Running'
    ]

  end
end
