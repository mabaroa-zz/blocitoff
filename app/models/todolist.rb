class Todolist < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :completed 

end
