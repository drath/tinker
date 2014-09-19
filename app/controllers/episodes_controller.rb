class EpisodesController < ApplicationController
	def index
		@episodes = Episode.all
	end

	def create
		Episode.create(episode_params)
	end

	def show
		@episode = Episode.find(params[:id])

		# Removing the timestamp from the URL. The timestamp is used as a cache-buster. Without it,
		# browsers may end up displaying stale lesson file, in case you ever change this file. 
		# http://stackoverflow.com/questions/3710829/paperclip-image-url. This may not be true in this 
		# case.
		@file = render_to_string :file => "public" + @episode.lesson.url(:original, timestamp: false)
	end

	private

		def episode_params
			params.require(:episode).permit(:name, :description, :notes, :published_at, :position, :still)
		end
end
