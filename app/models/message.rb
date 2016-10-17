class Message < ApplicationRecord
	include ActiveModel::Model
  	include ActiveModel::Conversion
  	include ActiveModel::Validations

  	attr_accessor :name, :email, :content, :phone, :business_name

  	validates :name,
    	presence: true

  	validates :email,
    	presence: true

  	validates :content,
    	presence: true

    validates :phone,
      presence: true

    validates :business_name,
      presence: true
end
