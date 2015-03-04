class MailConnect < ActiveRecord::Base
  SERVICE = {
      user: 'huA3c2XyNzBsz49uTLzn',
      password: 'huA3c2XyNzBsz49uTLzn',
      url: 'https://test.peytzmail.com/api/v1/'
  }

  def get_all_maillists
    RestClient::Resource.new(SERVICE[:url] , SERVICE[:user], SERVICE[:password])
  end

  def create_list
    RestClient::Resource.new('https://test.peytzmail.com/api/v1/mailinglists.json' , SERVICE[:user], SERVICE[:password])
  end
end
