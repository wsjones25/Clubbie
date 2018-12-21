class ClubsController < ApplicationController
	before_action :set_club, only: [:show]

	def index
		@clubs = Club.all
	end

	def show
	end

	private
	def set_club
		@club = Club.find(params[:id])
	end
end
