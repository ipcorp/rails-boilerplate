class Puerto < ActiveRecord::Base
  attr_accessible :altura_alerta, :altura_evacuacion, :nombre, :rio_id

  has_many   :alturas
  belongs_to :rio

  delegate :nombre, to: :rio, prefix: true

end
