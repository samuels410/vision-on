class Slider < ActiveRecord::Base
  belongs_to :album
   attr_accessible :album_id
end
