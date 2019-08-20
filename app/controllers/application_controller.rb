
require_relative '../../config/environment'
require_relative '../models/article.rb'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  #
  # get '/' do
  # end
  #
  # get '/articles/new' do
  #   erb :new
  # end
  #
  # post '/articles' do
  #   # @title = params[:title]
  #   # @content = params[:content]
  #   # Article.new(@title, @content)
  #   #
  #   # erb :show
  #
  #     @article = Article.new(title: params[:title], content: params[:content])
  #     redirect to "/articles/#{ @article.id }"
  # end


  get '/' do
    redirect to "/articles"
  end

  # index
  get "/articles" do
    @articles = Article.all
    erb :index
  end

  # new
  get "/articles/new" do
    @article = Article.new
    erb :new
  end

  # create
  post "/articles" do
    @article = Article.new(params)
    redirect to "/articles/#{ @article.id }"
  end

  # show
  get "/articles/:id" do
    @article = Article.find(params[:id])
    erb :show
  end

  # edit
  get "/articles/:id/edit" do
    @article = Article.find(params[:id])
    erb :edit
  end
  #
  # # update
  # patch "/articles/:id" do
  #   @article = Article.find(params[:id])
  #   @article.update(params[:article])
  #   redirect to "/articles/#{ @article.id }"
  # end
  #
  # #destroy
  # delete "/articles/:id" do
  #   Article.destroy(params[:id])
  #   redirect to "/articles"
  # end
end
