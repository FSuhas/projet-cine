class CandidatsController < ApplicationController
  before_action :set_candidat, only: [:show]

  def show
  end

  def update
    @candidat.update(params_create)
    redirect_to candidat_show_path(@candidat.user_id)
  end



  private

  def set_candidat
    @candidat = Candidat.new(user_id: params[:id], nom: "test", prenom: "test", date_de_naissance: "1990-01-01", adresse: "test", telephone: "test", bio: "test")
  end

  def params_create
    params.require('candidat/1').permit(:id ,:nom, :prenom, :date_de_naissance, :adresse, :telephone, :bio, :user_id)
  end
end
