class Apto < ActiveRecord::Base
has_secure_password
belongs_to :conjunto
end
