class BuysController < ApplicationController
  before_action :set_buy, only: [:show, :edit, :update, :destroy, :iwrotes]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /buys
  # GET /buys.json
  def index
    @buys = Buy.all.order("created_at DESC")
  end

  # GET /buys/1
  # GET /buys/1.json
  def show
    @buycomment = Buycomment.new
    @buycomments = @buy.buycomments.order("created_at DESC")
  end

  # GET /buys/new
  def new
    @buy = current_user.buys.build
  end

  def iwrotes
    @buys = Buy.all.order("created_at DESC")
  end

  # GET /buys/1/edit
  def edit
  end

  # POST /buys
  # POST /buys.json
  def create
    @buy = current_user.buys.build(buy_params)

    respond_to do |format|
      if @buy.save
        format.html { redirect_to @buy, notice: 'Buy was successfully created.' }
        format.json { render :show, status: :created, location: @buy }
      else
        format.html { render :new }
        format.json { render json: @buy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buys/1
  # PATCH/PUT /buys/1.json
  def update
    respond_to do |format|
      if @buy.update(buy_params)
        format.html { redirect_to @buy, notice: 'Buy was successfully updated.' }
        format.json { render :show, status: :ok, location: @buy }
      else
        format.html { render :edit }
        format.json { render json: @buy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buys/1
  # DELETE /buys/1.json
  def destroy
    @buy.destroy
    respond_to do |format|
      format.html { redirect_to buys_url, notice: 'Buy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy
      @buy = Buy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buy_params
      params.require(:buy).permit(:buy_title, :buy_description, :buyimage)
    end
end
