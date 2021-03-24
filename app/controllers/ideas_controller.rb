class IdeasController < ApplicationController

  def index
    @ideas = Idea.includes(:category).order(id: 'DESC')
  end

  def new
    @idea = Idea.new
  end
end
