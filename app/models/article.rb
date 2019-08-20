#Placeholder for a model
require 'active_record'

class Article < ActiveRecord::Base
  attr_reader :title, :content

  @@all = []

  def initialize(params)
    @title = params["title"]
    @content = params["content"]

    @@all << self
  end

  def self.all
    @@all
  end
end
