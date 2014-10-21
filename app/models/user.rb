class User < ActiveRecord::Base

  attr_accessor :password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  has_many :picks
  has_many :records

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
    return self
  end

  def self.authenticate(options={})
    
    user = find_by_email(options[:email])
    # user = User.find_by_email(options[:email])
    # user = User.find(email: options[:email])

    if user && user.password_hash == BCrypt::Engine.hash_secret(options[:password], user.password_salt)
      user
    else
      nil
    end
  end

  def self.build_user(options={})
    u = User.new(options)
    u.encrypt_password
  end

end
