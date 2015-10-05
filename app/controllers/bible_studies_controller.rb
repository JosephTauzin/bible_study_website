class BibleStudiesController < ApplicationController
  before_action :set_bible_study, only: [:show, :edit, :update, :destroy]

  # GET /bible_studies
  # GET /bible_studies.json
  def index
    @bible_studies = BibleStudy.all
  end

  # GET /bible_studies/1
  # GET /bible_studies/1.json
  def show
     @comments = @bible_study.comments.all
     @comment = @bible_study.comments.build
  end

  # GET /bible_studies/new
  def new
    @bible_study = BibleStudy.new
  end

  # GET /bible_studies/1/edit
  def edit
  end

  # POST /bible_studies
  # POST /bible_studies.json
  def create
    @bible_study = BibleStudy.new(bible_study_params)

    respond_to do |format|
      if @bible_study.save
        format.html { redirect_to @bible_study, notice: 'Bible study was successfully created.' }
        format.json { render :show, status: :created, location: @bible_study }
      else
        format.html { render :new }
        format.json { render json: @bible_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bible_studies/1
  # PATCH/PUT /bible_studies/1.json
  def update
    respond_to do |format|
      if @bible_study.update(bible_study_params)
        format.html { redirect_to @bible_study, notice: 'Bible study was successfully updated.' }
        format.json { render :show, status: :ok, location: @bible_study }
      else
        format.html { render :edit }
        format.json { render json: @bible_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bible_studies/1
  # DELETE /bible_studies/1.json
  def destroy
    @bible_study.destroy
    respond_to do |format|
      format.html { redirect_to bible_studies_url, notice: 'Bible study was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bible_study
      @bible_study = BibleStudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bible_study_params
      params.require(:bible_study).permit(:date, :lesson, :takeaways)
    end
end
