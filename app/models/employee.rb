class Employee < ActiveRecord::Base
  attr_accessible :experienceLevel, :firstName, :lastName, :title
end
