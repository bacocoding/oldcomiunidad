class ExampleMailer < ActionMailer::Base
  default from: "comiunidad@gmail.com"

  def sample_email(mensaje, email, apto, elanexo)
    @mensaje = mensaje
    if elanexo !=nil
    attachments.inline["anexo.pdf"] = {
   :content=>elanexo.read, 
   :mime_type=>elanexo.content_type
} 
 else
    mail(to: email, subject: apto)
 end
  end
end