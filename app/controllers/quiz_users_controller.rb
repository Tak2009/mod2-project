class QuizUsersController < ApplicationController
  before_action :set_quiz_user, only: [:show, :edit, :update, :destroy]

  # GET /quiz_users
  # GET /quiz_users.json
  def index
    @quiz_users = QuizUser.all
  end

  # GET /quiz_users/1
  # GET /quiz_users/1.json
  def show
  end

  # GET /quiz_users/new
  def new
    @quiz_user = QuizUser.new
  end

  # GET /quiz_users/1/edit
  def edit
  end

  # POST /quiz_users
  # POST /quiz_users.json
  def create
    @quiz_user = QuizUser.new(quiz_user_params)

    respond_to do |format|
      if @quiz_user.save
        format.html { redirect_to @quiz_user, notice: 'Quiz user was successfully created.' }
        format.json { render :show, status: :created, location: @quiz_user }
      else
        format.html { render :new }
        format.json { render json: @quiz_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz_users/1
  # PATCH/PUT /quiz_users/1.json
  def update
    respond_to do |format|
      if @quiz_user.update(quiz_user_params)
        format.html { redirect_to @quiz_user, notice: 'Quiz user was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz_user }
      else
        format.html { render :edit }
        format.json { render json: @quiz_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz_users/1
  # DELETE /quiz_users/1.json
  def destroy
    @quiz_user.destroy
    respond_to do |format|
      format.html { redirect_to quiz_users_url, notice: 'Quiz user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_user
      @quiz_user = QuizUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_user_params
      params.require(:quiz_user).permit(:user_id, :quiz_id, :answers)
    end
end
