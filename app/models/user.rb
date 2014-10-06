require 'simple_enum/mongoid'

class User
  include Mongoid::Document
  include SimpleEnum::Mongoid

  as_enum :role, [:user, :vip, :admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""
  field :_id, type: String, default: -> { email }

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  field :confirmation_token,   type: String
  field :confirmed_at,         type: Time
  field :confirmation_sent_at, type: Time
  field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  ## Pundit Role
  field :role, type: Integer

  ## Invitable
  field :invitation_token,       type: String
  field :invitation_created_at,  type: DateTime
  field :invitation_accepted_at, type: DateTime
  field :invitation_sent_at,     type: DateTime
  field :invitation_limit,       type: Integer
  field :invited_by_id,          type: Integer
  field :invited_by_type,        type: String
  field :invitations_count,      type: Integer, default: 0

  ## Other member variable
  field :name,  type: String
  #field :photo, type: String

end
