class Folder < ActiveRecord::Base
  belongs_to :user
  belongs_to :archive

  attr_accessible :name
end
