class CandidatsController < ApplicationController
  before_action :set_candidat, only: [:update]

  def show
    @candidat = Candidat.find(params[:id])
  end

  def update
    @candidat = Candidat.find(params[:id])
    @candidat.update(params_create)
    # raise
    redirect_to candidat_show_path(@candidat)
  end



  private

  def set_candidat
    @candidat = Candidat.new(user_id: params[:id])
    if @candidat.user_id == params[:id]
      @candidat.save
    end
  end

  def params_create
    params.require(:candidat).permit(:id, :nom, :prenom, :date_de_naissance, :adresse, :telephone, :bio, :user_id)
  end
end
