class Spree::ContactFormConfiguration < Spree::Preferences::Configuration
  preference :contact_tracking_message, :string, :default => nil
end
