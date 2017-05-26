class Lead < ActiveRecord::Base
  validates :first_name, :last_name, :contact_specialty, :location, :city, :state, :country, :email, :buying_timeframe, :email, presence: true
end
