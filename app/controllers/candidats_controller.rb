class CandidatsController < ApplicationController
  before_action :set_profile, only: [:show, :edit]

  def candidat
  end


  private

  def set_candidat
    @user = User.find(params[:id])
  end

  def params_create
    params.require('/candidat').permit( )
  end
end
