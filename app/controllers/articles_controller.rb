class ArticlesController < ApplicationController

  def index
    user_search = params[:search]
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{user_search}&apiKey=<YOUR API KEY>")
    articles = response.parse(:json)["articles"]
    render json: articles
  end

end
