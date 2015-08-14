class FigsController < ApplicationController
  before_action :set_fig, only: [:show, :edit, :update, :destroy]

  # GET /figs
  # GET /figs.json
  def index
    @figs = Fig.all
  end

  # GET /figs/1
  # GET /figs/1.json
  def show
  end

  # GET /figs/new
  def new
    @fig = Fig.new
  end

  # GET /figs/1/edit
  def edit
  end

  # POST /figs
  # POST /figs.json
  def create
    @fig = Fig.new(fig_params)

    respond_to do |format|
      if @fig.save
        format.html { redirect_to @fig, notice: 'Fig was successfully created.' }
        format.json { render :show, status: :created, location: @fig }
      else
        format.html { render :new }
        format.json { render json: @fig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /figs/1
  # PATCH/PUT /figs/1.json
  def update
    respond_to do |format|
      if @fig.update(fig_params)
        format.html { redirect_to @fig, notice: 'Fig was successfully updated.' }
        format.json { render :show, status: :ok, location: @fig }
      else
        format.html { render :edit }
        format.json { render json: @fig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /figs/1
  # DELETE /figs/1.json
  def destroy
    @fig.destroy
    respond_to do |format|
      format.html { redirect_to figs_url, notice: 'Fig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fig
      @fig = Fig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fig_params
      params.require(:fig).permit(:url, :user_id)
    end
end
