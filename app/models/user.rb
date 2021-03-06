# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  # Concerns
  include NameSearchable
  include Paginatable
  # Enums
  enum profile: { admin: 0, client: 1 }
  # Validations
  validates :name, presence: true
  validates :profile, presence: true
end
