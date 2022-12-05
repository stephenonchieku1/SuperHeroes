class HeroPower < ApplicationRecord
 belongs_to:heros
 belongs_to:power
 has_secure_pasword
end
