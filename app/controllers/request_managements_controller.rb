class RequestManagementsController < ApplicationController
  def create
    request = current_user.request_managements.create(problem_id: params[:problem_id])
    redirect_to problem_path(request.problem.id), notice: "#{request.problem.user.name}さんの課題#{request.problem.title}に申請しました！"
    ApplyMailer.apply_mail(request).deliver if request.save
  end

  def destroy
    request = current_user.request_managements.find_by(id: params[:id]).destroy
    redirect_to problems_url(request.problem.id), notice: "#{request.problem.user.name}さんの課題#{request.problem.title}の申請を取り消しました！"
  end
end
