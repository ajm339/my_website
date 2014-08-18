class UserMailer < ActionMailer::Base
  default from: "ajm339@cornell.edu"

  def comment_email(comment)
    @comment = comment
    @url = "http://www.alexjmeyers.com"
    mail(to: @comment.email, subject: 'alexjmeyers.com: Thanks for commenting on my blog post!')
  end

  def comment_notification_email(comment)
    @comment = comment
    mail(to: 'ajm339@cornell.edu', subject: @comment.name + ' just commented on your blog')
  end

end
