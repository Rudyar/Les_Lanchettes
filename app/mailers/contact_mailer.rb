class ContactMailer < ApplicationMailer

  def send_contact_email(name:, email:, message:)
    @name = name
    @email = email
    @message = message
    mail(to: 'leslanchettes@wanadoo.fr', subject: 'Nouveau message du site de location') 
  end

end
