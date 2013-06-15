class Spree::ContactForm::ContactsController < Spree::BaseController

  helper "spree/products"
  def create
    @contact = Spree::ContactForm::Contact.new(params[:contact_form_contact])

    if @contact.save
      if Spree::ContactUs::Config.contact_tracking_message.present?
        flash[:contact_tracking] = Spree::ContactForm::Config.contact_tracking_message
      end
      redirect_to(spree.root_path, :notice => t('spree.contact_form.notices.success'))
    else
      render :new
    end
  end

  def new
    @contact = Spree::ContactForm::Contact.new
  end

  private

  def accurate_title
    t('spree.contact_form.contacts.new.contact_form')
  end

end
