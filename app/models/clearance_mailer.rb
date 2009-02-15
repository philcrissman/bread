class ClearanceMailer < ActionMailer::Base
  default_url_options[:host] = HOST
  Clearance::App::Models::ClearanceMailer::DO_NOT_REPLY = 'donotreply@bread.local'
  include Clearance::App::Models::ClearanceMailer
end
