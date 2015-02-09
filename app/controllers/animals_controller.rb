class AnimalsController < ApplicationController
  def index
  	@wideeyes = Wideeye.all.order("created_at DESC")
  end

  def show
  end
end
