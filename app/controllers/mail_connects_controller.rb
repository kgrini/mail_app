class MailConnectsController < ApplicationController

  def index
    resource = MailConnect.get_all_mailists
    @responce = resource['mailinglists.json'].get  :Authorization => $auth
  end

  def create_mail_list
    {mailinglist: {title:  "Weekly newsletter", default_template: 'weekly_newsletter', send_confirmation_mail: false, send_welcome_mail:  false}}

    resource = MailConnect.create_list
    @responce = resource['mailinglists.json'].post  a, :Authorization => $auth
  end

  def create_subscriber

  end
end
