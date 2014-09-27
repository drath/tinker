require 'open-uri'

class EpisodesController < ApplicationController
	def index
		#
		@episodes = Episode.all
	end

	def create
		Episode.create(episode_params)
	end

	def show
		@episode = Episode.find(params[:id])
		#@markdown = File.read("public" + @episode.lesson.url(:original, timestamp: false))
		@markdown = open(@episode.content_url) {|f| f.read }
		logger.debug "Markdown contents:" + @markdown
	end

	private

		def episode_params
			params.require(:episode).permit(:name, :description, :notes, :published_at, :position, :still, :body, :content_url)
		end
end
