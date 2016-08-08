class Kintai < ActiveRecord::Base
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      
      csv << ["ID", "Date", "Start Time", "Finish Time", "Research Time"]
      all.each do |kintai|
        csv << kintai.csv_value
      end
    end
  end
    def csv_value
      [id, date, start_time, finish_time, (start_time - finish_time)]
    end
end
