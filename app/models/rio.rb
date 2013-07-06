class Rio < ActiveRecord::Base
  attr_accessible :nombre

  has_many :puertos
end
