class City < ApplicationRecord

validates :name, :country, presence: true
validates :name, length: {minimum: 3, too_short: "%{count} characters is the minimum allowed" }

end
