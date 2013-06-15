module SpreeContactForm
  class Engine < Rails::Engine
    engine_name 'spree_contact_form'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.contact_form.preferences", :after => "spree.environment" do |app|
      module Spree::ContactForm
        Config = Spree::ContactFormConfiguration.new
      end
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
