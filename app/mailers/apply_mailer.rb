class ApplyMailer < ApplicationMailer
  default from: 'from@example.com'

  def apply_mail(apply)
    @apply = apply
    mail to: @apply.problem.user.email, subject: '申請がありました！'
  end
end
