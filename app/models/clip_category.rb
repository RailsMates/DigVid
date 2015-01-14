class ClipCategory < ActiveRecord::Base
  belongs_to :clip
  belongs_to :category
end
