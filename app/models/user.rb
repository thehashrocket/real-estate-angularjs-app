class User < ActiveRecord::Base
  devise :token_authenticatable, :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  def clear_authentication_token!
    update_attribute(:authentication_token, nil)
  end

end
