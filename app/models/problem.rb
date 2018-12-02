class Problem < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :request_managements, dependent: :destroy
  has_many :request_management_users, through: :request_managements, source: :user

  validates_presence_of :title, :content, :return

  scope :recent, -> { per(10).order('created_at DESC') }

end
