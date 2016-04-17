class Datum < ActiveRecord::Base
  belongs_to :device
  self.primary_keys = :device_id, :recorded_at
end
