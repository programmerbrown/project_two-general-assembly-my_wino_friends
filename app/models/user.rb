class User < ActiveRecord::Base
  has_many :wines, dependent: :destroy
end
