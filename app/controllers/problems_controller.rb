class ProblemsController < ApplicationController
  before_action :set_problem, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new show edit update destroy]

  def index
    @problems = Problem.all
    @problem_pages = Problem.page(params[:page]).per(10)
  end

  def show
    @request = current_user.request_managements.find_by(problem_id: @problem.id)
    @reviews = @problem.reviews
    @review = @problem.reviews.build
  end

  def new
    @problem = Problem.new
  end

  def edit; end

  def create
    @problem = Problem.new(problem_params)
    @problem.user_id = current_user.id

    if @problem.save
      redirect_to @problem, notice: '相談を作成しました！'
    else
      render :new
    end
  end

  def update
      if @problem.update(problem_params)
        redirect_to @problem, notice: '相談内容を更新しました！'
      else
        render :edit
      end
  end

  def destroy
    @problem.destroy
    redirect_to problems_url, notice: '相談を削除しました！'
  end

  private

  def set_problem
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.fetch(:problem, {}).permit(:title, :content, :return)
  end
end
