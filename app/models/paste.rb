class Paste < ActiveRecord::Base
  validates_presence_of :language, :code

end
