class Chirp < ActiveRecord::Base
  def to_s
    self.to_s + " Here is my 2 chirps' worth: ..."
  end
end
