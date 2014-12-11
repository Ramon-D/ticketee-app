ActionMailer::Base.smtp_settings = {
  :user_name => "ramonnetflower@gmail.com",
  :password => "rubyonrailstest",
  :address => "smtp.gmail.com",
	:port => 587,
  :enable_starttls_auto => true
}
