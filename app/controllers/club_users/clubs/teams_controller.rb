module ClubUsers
	module Clubs
		class TeamsController < ApplicationController
			before_action :check_club
			def new
				@team = current_club_user.club.teams.build
			end

			def create
		      #@club = Club.new(user: current_club_user, club_name: club_params[:club_name])
		      @team = current_club_user.club.teams.build(team_params)
		      #@clubcurrent_club_user.clubs.build(club_params)

		      respond_to do |format|
		        if @team.save
		          format.html { redirect_to root_path, notice: 'Your team is now live.' }
		        else 
		          format.html { render :new }
		        end
		      end
		    end

			private

			def team_params
				params.require(:team).permit(:name, :team_type, :league, :last_year_position, :training)
			end

			def check_club
				redirect_to root_path, error: "there is no cluub on this user" unless current_club_user.club
			end
		end
	end
end
	
