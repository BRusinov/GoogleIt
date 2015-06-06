class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]

  # GET /forms
  # GET /forms.json
  def index
    @forms = Form.all
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
  end

  # GET /forms/new
  def new
    @form = Form.new
  end

  # GET /forms/1/edit
  def edit
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(form_params)

    form_params["fields_attributes"].each do |k,v|
        field = Field.create(name: v["name"], field_type: v["field_type"], required: false)
        p field
        thing = FormField.new(form: @form, field: field)
        # @form.form_fields.create(field_id: field.id) #<< field #create(field_id: field.id)
    end

    respond_to do |format|
      if @form.save
        format.html { redirect_to @form, notice: 'Form was successfully created.' }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    @form.destroy
    @form = Form.new(form_params)

    form_params["fields_attributes"].each do |k,v|
        field = Field.create(name: v["name"], field_type: v["field_type"], required: false)
        p field
        thing = FormField.new(form: @form, field: field)
        # @form.form_fields.create(field_id: field.id) #<< field #create(field_id: field.id)
    end

    respond_to do |format|
      if @form.save
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:title, :target_url, fields_attributes: [:name, :name_attribute, :field_type, :required, :_destroy])
    end
end
