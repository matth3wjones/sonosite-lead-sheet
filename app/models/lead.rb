class Lead < ActiveRecord::Base
  validates :first_name, :last_name, :contact_specialty, :location, :city, :state, :country, :email, :buying_timeframe, :email, presence: true


  def self.to_csv
    attributes = %w{id salutation first_name last_name company title department contact_specialty location street city state zip_code country phone fax email new_to_ultrasound previous_ultrasound current_sonosite buying_timeframe product rating marketing_comments}
    # CSV.generate(headers: true) do |csv|
    #   csv << attributes
    #   Lead.all.each do |lead|
    #     csv << lead.attributes.values_at(*attributes)
    #   end
    # end

    CSV.open("./leads.csv", "w+") do |csv|
      csv << attributes
      Lead.all.each do |lead|
        csv << lead.attributes.values_at(*attributes)
      end
    end
  end
end
