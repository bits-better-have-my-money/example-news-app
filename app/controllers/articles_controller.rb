class ArticlesController < ApplicationController

  def index
    user_search = params[:search]
    response = HTTP.auth("<YOUR API KEY>").get("https://newsapi.org/v2/everything?q=#{user_search}")
    articles = response.parse(:json)["articles"]
    render json: articles
  end

end
