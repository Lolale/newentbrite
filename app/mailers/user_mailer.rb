class UserMailer < ApplicationMailer
  default from: 'veraturan@yopmail.com'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://veraturan.com/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def email_to_guest(admin, user, event)
  	@admin = event.admin
 	@user = user
 	@event = event 

 	mail(to: @user.email, subject: "Tu es inscrit.e à l'évènement du jour!")
  end

  def email_to_admin(user, event, admin)
  	@admin = admin
  	@user = user
 	@event = event 

 	mail(to: @admin.email, subject: "Une personne de plus participe à ton event!")
 end
end
