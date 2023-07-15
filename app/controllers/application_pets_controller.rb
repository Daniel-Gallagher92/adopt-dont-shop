class ApplicationPetsController < ApplicationController

  def create
    application_pet = ApplicationPet.create!(application_id: params[:application_id], pet_id: params[:pet_id])
    redirect_to "/applications/#{application_pet.application_id}"
  end


end