class Stop < ActiveRecord::Base

  belongs_to :tour

  validates_presence_of :title, :media_type, :media, :item_id, :tour_id, :stop_number
  validates_uniqueness_of :stop_number, scope: :tour_id

end
