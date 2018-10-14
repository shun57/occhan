class Problem < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :request_managements, dependent: :destroy
  has_many :request_management_users, through: :request_managements, source: :user

  validates :title, presence: true
  validates :content, presence: true
  validates :return, presence: true
end
