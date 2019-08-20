#Placeholder for a model
require 'active_record'

class Article < ActiveRecord::Base
  attr_reader :title, :content

  @@all = []

  def initialize(title, content)
    @title = title
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end
end
