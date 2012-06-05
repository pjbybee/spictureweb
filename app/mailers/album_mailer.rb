class AlbumMailer < ActionMailer::Base
  default :from => "mywebpictures2012@gmail.com"
  
  def album_shared(contact, album)
    @contact = contact
    @album = album
    mail(:to => "#{contact.name} <#{contact.email}>", :subject => "An album has been shared with you!")
  end
end
