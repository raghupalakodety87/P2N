class Node
  def initialize(id, parent, text)
    @id = id
    @parent = parent
    @text = text
  end
end

class RecruitmentPhasesController < ApplicationController
  before_action :set_recruitment_phase, only: %i[ show edit update destroy ]

  def tree_data
    cohort_id = params[:cohort_id]
    recruitment_phase_id = params[:recruitment_phase_id]

    cohort = Cohort.find(cohort_id)
    recruitment_phase = cohort.recruitment_phases.find(recruitment_phase_id)

    data = Array.new
    data.push(Node.new("root", "#", recruitment_phase.phase_name))

    data.push(Node.new("l11", "root", "hund"))
    data.push(Node.new("l12", "root", "katze"))
    data.push(Node.new("l13", "root", "maus"))

    data.push(Node.new("l21", "l13", "laus"))
    data.push(Node.new("l22", "l13", "haus"))

    render json: data
  end

  # GET /recruitment_phases or /recruitment_phases.json
  def index
    @recruitment_phases = RecruitmentPhase.all
  end

  # GET /recruitment_phases/1 or /recruitment_phases/1.json
  def show
  end

  # GET /recruitment_phases/new
  def new
    @recruitment_phase = RecruitmentPhase.new
  end

  # GET /recruitment_phases/1/edit
  def edit
  end

  # POST /recruitment_phases or /recruitment_phases.json
  def create
    @recruitment_phase = RecruitmentPhase.new(recruitment_phase_params)

    respond_to do |format|
      if @recruitment_phase.save
        format.html { redirect_to recruitment_phase_url(@recruitment_phase), notice: "Recruitment phase was successfully created." }
        format.json { render :show, status: :created, location: @recruitment_phase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recruitment_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recruitment_phases/1 or /recruitment_phases/1.json
  def update
    respond_to do |format|
      if @recruitment_phase.update(recruitment_phase_params)
        format.html { redirect_to recruitment_phase_url(@recruitment_phase), notice: "Recruitment phase was successfully updated." }
        format.json { render :show, status: :ok, location: @recruitment_phase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recruitment_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruitment_phases/1 or /recruitment_phases/1.json
  def destroy
    @recruitment_phase.destroy

    respond_to do |format|
      format.html { redirect_to recruitment_phases_url, notice: "Recruitment phase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruitment_phase
      @recruitment_phase = RecruitmentPhase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recruitment_phase_params
      params.require(:recruitment_phase).permit(:phase_name)
    end
end
