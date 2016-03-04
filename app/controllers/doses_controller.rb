class DosesController < ProtectedController
  before_action :dose_params, only: [:update, :create]
  before_action :set_dose, only: [:show, :update, :destroy]

  # GET /doses
  # GET /doses.json
  def index
    @doses = current_user.doses
    @doses.each do |obj|
      obj.medicine = Medicine.find(obj.medicine_id)
    end
    render json: @doses
  end

  # GET /doses/1
  # GET /doses/1.json
  def show
    render json: @dose
  end

  # POST /doses
  # POST /doses.json
  def create
    @dose = current_user.doses.build(dose_params)

    if @dose.save
      render json: @dose, status: :created, location: @dose
    else
      render json: @dose.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doses/1
  # PATCH/PUT /doses/1.json
  def update
    if @dose.update(dose_params)
      head :no_content
    else
      render json: @dose.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doses/1
  # DELETE /doses/1.json
  def destroy
    @dose.destroy

    head :no_content
  end

  private

    def set_dose
      @dose = current_user.doses.find(params[:id])
    end

    def dose_params
      params.require(:doses).permit(:label, :size, :time, :user_id, :medicine_id)
    end
end
