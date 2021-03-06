class PatientsController < ApplicationController
    before_action :set_patient, except: [:index, :new, :create]

    def index
        @patients = Patient.all 
    end

    def show
    end

    private
    
    def set_patient
        @patient = Patient.find_by(id: params[:id])
    end

end