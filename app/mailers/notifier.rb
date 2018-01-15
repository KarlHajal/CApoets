class Notifier < ApplicationMailer
  default from: "notifications@example.com"

  def notify(teacher)
    @teacher = teacher
    @url = 'http://capits.herokuapp.com/users/sign_in'
    # change from tina@cpits.org to cpits@mailinator.com to avoid spamming tina
    mail(to: 'cpits@mailinator.com',
         subject: 'A New Poem Has Been Submitted')
  end
end
