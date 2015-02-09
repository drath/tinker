class AnimalsController < ApplicationController
  def index
  	@wideeyes = Wideeye.all
  end

  def show
  end
end
