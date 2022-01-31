class ArticlesController < ApplicationController

  def index
    articles = HTTP.auth("APIKEYGOESHERE").get("https://newsapi.org/v2/everything?q=#{params[:keyword]}").parse(:json)["articles"]
    render json: articles
  end

end
