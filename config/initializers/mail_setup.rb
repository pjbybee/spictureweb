  ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "mywebpictures2012@gmail.com",
  :password             => "myWebPicture",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "http://ec2-23-23-233-62.compute-1.amazonaws.com/"
#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
