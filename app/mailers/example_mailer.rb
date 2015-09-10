class ExampleMailer < ActionMailer::Base
  default from: "comiunidad@gmail.com"

  def sample_email(mensaje, email, apto)
    @mensaje = mensaje
    mail(to: email, subject: apto)
    
  end
end