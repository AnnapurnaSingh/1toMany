class User < ActiveRecord::Base
  def to_s
    self.to_s + " Hello, I am ..."
  end
end
