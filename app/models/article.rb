#Placeholder for a model
require 'active_record'

class Article < ActiveRecord::Base
  attr_reader :title, :content

  def initialize(params)
    @title = params["title"]
    @content = params["content"]
  end
end
