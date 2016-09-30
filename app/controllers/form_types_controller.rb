class FormTypesController < ApplicationController
  before_action :set_form_type, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /form_types
  # GET /form_types.json
  def index
    @form_types = FormType.all
  end

  # GET /form_types/1
  # GET /form_types/1.json
  def show
  end

  # GET /form_types/new
  def new
    @form_type = FormType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @form_type }
    end
  end

  # GET /form_types/1/edit
  def edit
  end

  # POST /form_types
  # POST /form_types.json
  def create
    @form_type = FormType.new(form_type_params)

    respond_to do |format|
      if @form_type.save
        format.html { redirect_to @form_type, notice: 'Form type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @form_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_types/1
  # PATCH/PUT /form_types/1.json

 def update
   respond_to do |format|
     if @form_type.update(form_type_params)
       format.html { redirect_to @form_type, notice: 'Form type was successfully updated.' }
       format.json { head :no_content }
     else
       format.html { render action: 'edit' }
       format.json { render json: @form_type.errors, status: :unprocessable_entity }
     end
   end
 end

  # DELETE /form_types/1
  # DELETE /form_types/1.json
  def destroy
    @form_type.destroy
    respond_to do |format|
      format.html { redirect_to form_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_type
      @form_type = FormType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_type_params
      params.require(:form_type).permit(:name, :author, fields_attributes: [:id, :field_type, :name, :required])
    end
end
