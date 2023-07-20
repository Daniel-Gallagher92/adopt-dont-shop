class Admin::ApplicationsController < ApplicationController
    def show
      @application = Application.find(params[:id])
      @pets = @application.pets
      @application.pets.each do |pet| 
      application_pet = @application.pet_app_find(pet.id)
      if application_pet.status == "Approved"
        @application.update(status: "Approved")
        redirect_to '/admin/shelters'
      end
      if application_pet.status == "Rejected"
        @application.update(status: "Rejected")
      end
    end
    end
   
 
  
  
  end