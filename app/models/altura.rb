class Altura < ActiveRecord::Base
  attr_accessible :fecha, :medicion, :puerto_id

  belongs_to :puerto
end
