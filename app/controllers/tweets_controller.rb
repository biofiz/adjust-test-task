class TweetsController < ApplicationController

  def index
    if params[:search].present?
      @tweets = TweetsService.search_tweets(params[:search])
    end
  end
end
