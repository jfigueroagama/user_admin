class UserInOutsController < ApplicationController
  before_action :set_user_in_out, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /user_in_outs
  # GET /user_in_outs.json
  def index
    @user_in_outs = UserInOut.all
  end

  # GET /user_in_outs/1
  # GET /user_in_outs/1.json
  def show
  end

  # GET /user_in_outs/new
  def new
    @user_in_out = UserInOut.new
  end

  # GET /user_in_outs/1/edit
  def edit
  end

  # POST /user_in_outs
  # POST /user_in_outs.json
  def create
    @user_in_out = UserInOut.new(user_in_out_params)
    @user_in_out.user = current_user

    respond_to do |format|
      if @user_in_out.save
        format.html { redirect_to @user_in_out, notice: 'User in out was successfully created.' }
        format.json { render :show, status: :created, location: @user_in_out }
      else
        format.html { render :new }
        format.json { render json: @user_in_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_in_outs/1
  # PATCH/PUT /user_in_outs/1.json
  def update
    respond_to do |format|
      if @user_in_out.update(user_in_out_params)
        format.html { redirect_to @user_in_out, notice: 'User in out was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_in_out }
      else
        format.html { render :edit }
        format.json { render json: @user_in_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_in_outs/1
  # DELETE /user_in_outs/1.json
  def destroy
    @user_in_out.destroy
    respond_to do |format|
      format.html { redirect_to user_in_outs_url, notice: 'User in out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_in_out
      @user_in_out = UserInOut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_in_out_params
      params.require(:user_in_out).permit(:user_in, :user_out)
    end
end
