class Message < ApplicationRecord
	attr_accessor :name, :email, :phone, :company_name, :subject, :content
	validates :name, :email, :content, presence: true
end
