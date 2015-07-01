class InputFieldManagersController < ApplicationController
  before_action :set_input_field_manager, only: [:show, :edit, :update, :destroy]

  # GET /input_field_managers
  # GET /input_field_managers.json
  def index
    @input_field_managers = InputFieldManager.all
  end

  # GET /input_field_managers/1
  # GET /input_field_managers/1.json
  def show
  end

  # GET /input_field_managers/new
  def new
    @input_field_manager = InputFieldManager.new
  end

  # GET /input_field_managers/1/edit
  def edit
  end

  # POST /input_field_managers
  # POST /input_field_managers.json
  def create
    @input_field_manager = InputFieldManager.new(input_field_manager_params)

    respond_to do |format|
      if @input_field_manager.save
        format.html { redirect_to @input_field_manager, notice: 'Input field manager was successfully created.' }
        format.json { render :show, status: :created, location: @input_field_manager }
      else
        format.html { render :new }
        format.json { render json: @input_field_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /input_field_managers/1
  # PATCH/PUT /input_field_managers/1.json
  def update
    respond_to do |format|
      if @input_field_manager.update(input_field_manager_params)
        format.html { redirect_to @input_field_manager, notice: 'Input field manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @input_field_manager }
      else
        format.html { render :edit }
        format.json { render json: @input_field_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /input_field_managers/1
  # DELETE /input_field_managers/1.json
  def destroy
    @input_field_manager.destroy
    respond_to do |format|
      format.html { redirect_to input_field_managers_url, notice: 'Input field manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_input_field_manager
      @input_field_manager = InputFieldManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def input_field_manager_params
      params.require(:input_field_manager).permit(:name, :description, input_field_manager_values_attributes: [:id, :name, :_destroy])
    end
end
