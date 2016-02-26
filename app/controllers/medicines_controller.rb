class MedicinesController < ProtectedController
  before_action :medicine_params, only: [:create, :destroy, :usermeds]
  before_action :set_medicine, only: [:show, :destroy, :usermeds]

  # GET /medicines
  # GET /medicines.json
  def index
    @medicines = Medicine.all

    render json: @medicines
  end

  # GET /medicines/1
  # GET /medicines/1.json

  # DON'T NEED SHOW FOR NOW, LEAVING CODE IN CASE I NEED IT LATER

  # def show
  #   render json: @medicine
  # end

  # POST /medicines
  # POST /medicines.json
  def create
    @medicine = Medicine.new(medicine_params)

    if @medicine.save
      render json: @medicine, status: :created, location: @medicine
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medicines/1
  # PATCH/PUT /medicines/1.json

  # DON'T NEED UPDATE FOR NOW, LEAVING CODE IN CASE I NEED IT LATER

  # def update
  #   @medicine = Medicine.find(params[:id])
  #
  #   if @medicine.update(medicine_params)
  #     head :no_content
  #   else
  #     render json: @medicine.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /medicines/1
  # DELETE /medicines/1.json
  def destroy
    @medicine.destroy

    head :no_content
  end

  private
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    def medicine_params
       params.require(:medicines).permit(:name, :unit_name, :notes)
    end

    # def user_creds
    #   params.require(:credentials)
    #     .permit(:email, :password, :password_confirmation)
    # end
end
