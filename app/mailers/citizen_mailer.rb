class CitizenMailer < ApplicationMailer

  default from: 'app_@exemple.com'

  def welcome_email(citizen)
    @citizen = citizen
    mail(to: @citizen.email, subject: 'Bem vindo! Seu cadastro foi realizado com sucesso!')
  end



end
