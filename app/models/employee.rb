class Employee < ActiveRecord::Base
  
  attr_accessible :image, :experienceLevel, :firstName, :lastName, :title, :middleName, :CareerLevelID, :employeeNumber, :cellPhone
#dragonfly_accessor :photo
end
