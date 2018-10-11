class RequestManagement < ApplicationRecord
  belongs_to :user
  belongs_to :problem
end
