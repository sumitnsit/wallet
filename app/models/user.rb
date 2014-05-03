class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def paypal(return_url) 
      values = { 
        :business => 'sumit.india@gmail.com',
        :cmd => '_cart',
        :upload => 1,
        :return => return_url,
      } 
    
    values.merge!({ 
      "amount_1" => 100,
      "item_name_1" => "Yash",
      "item_number_1" => 1,
      "quantity_1" => '1'
    })
      "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
 end

end