module ClubUsers
  class ClubsController < ApplicationController
    before_action :set_club, only: [:show, :edit, :update, :destroy]

    def edit
    end

    def update
      respond_to do |format|
        if @club.update(club_params)
          format.html { redirect_to clubs_path, notice: 'Your record sucessfully updated.'}
        else 
          format.html { render :edit}
        end
      end
    end

    def destroy
      @club.destroy
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Record was removed.' }
      end
    end

    def new
      @club = current_club_user.build_club
    end

    def create
      @club = current_club_user.build_club(club_params)

      respond_to do |format|
        if @club.save
          format.html { redirect_to clubs_path, notice: 'Your club is now live.' }
        else 
          format.html { render :new }
        end
      end
    end

    def show
    end

    private
    def club_params
        params.require(:club).permit(
        :club_name, 
        :sport, 
        :main_image, 
        :address
        )
    end

    def set_club
      @club = current_club_user.club
    end
  end
end