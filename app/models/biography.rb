class Biography < ActiveRecord::Base
  belongs_to :author
  validates_uniqueness_of :author_id, allow_nil: true
end