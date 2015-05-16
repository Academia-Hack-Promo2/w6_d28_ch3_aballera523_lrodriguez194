class Party < ActiveRecord::Base
	validates :name, :address, :date, :reservation, presence: true
end
