class ReviewsController < ApplicationController
  def create
    @problem = Problem.find(params[:problem_id])
    @review = @problem.reviews.build(review_params)
    @review.user_id = current_user.id

    respond_to do |format|
      if @review.save
        format.js { render :index }
      else
        format.html { redirect_to problem_path(@problem), notice: '投稿できませんでした' }
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    render :index if @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:review_content, :problem_id, :user_id)
  end
end
