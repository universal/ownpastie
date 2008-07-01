class Paste < ActiveRecord::Base
  validates_presence_of :language, :code
  acts_as_versioned

end
