class EpisodesController < ApplicationController
	def index
		@episodes = Episode.all
	end

	def create
		Episode.create(episode_params)
	end

	private

		def episode_params
			params.require(:episode).permit(:name, :description, :notes, :published_at, :position, :still)
		end
end
