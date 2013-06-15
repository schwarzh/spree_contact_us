class Spree::ContactForm::ContactMailer < ActionMailer::Base
  def contact_email(contact)
    @contact = contact

    mail :from    => (SpreeContactForm.mailer_from || @contact.email),
         :reply_to => @contact.email,
         :subject => (SpreeContactForm.require_subject ? @contact.subject : t('spree.contact_form.contact_mailer.contact_email.subject', :email => @contact.email)),
         :to      => SpreeContactForm.mailer_to
  end
end
