module Api
  module V1
    class IdeasController < ApplicationController

      def index
        ideas = Idea.includes(:category).order(id: 'DESC')
      end

      def create
        idea = Idea.new(idea_params)
        if idea.save
          render json: idea
        else
          render json: idea.errors
        end
      end

      private

      def idea_params
        params.require(:idea).permit(:body, :category_id)
      end
    end
  end
end
