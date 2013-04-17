class Archive < ActiveRecord::Base
  belongs_to :user
  has_many :folders
  has_many :users, through: :folders

  attr_accessible :name, :pdf, :public
end
