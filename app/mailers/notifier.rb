class Notifier < ActionMailer::Base
  from_address = ActionMailer::Base.smtp_settings[:user_name]
	default from: "Ticketee App <#{from_address}>"

  def comment_updated(comment, user)
	  @comment = comment
	  @user = user
	  @ticket = comment.ticket
	  @project = @ticket.project
	  subject = "[ticketee] #{@project.name} - #{@ticket.title}"
	  mail(:to => user.email, :subject => subject,
	  	   :reply_to => "Ticketee App <ramonnetflower+" +
     		 "#{@project.id}+#{@ticket.id}@gmail.com>")
	end
end
