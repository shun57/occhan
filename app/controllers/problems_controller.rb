class ProblemsController < ApplicationController
  before_action :set_problem, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new show edit update destroy]

  def index
    @problems = Problem.all
    @problems = Problem.page(params[:page]).per(10).order('created_at DESC')
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
    @problem = current_user.problems.build(problem_params)

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
