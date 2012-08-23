class FillTimesheet < ActiveRecord::Base
  attr_accessible :date, :department, :description, :time_in, :time_out
  
  
  def to_label
    date 
  end
  
  def self.csv_header
    "ID, Time In,Time Out, Date, Description"
  end

  # Emit our attribute values as a line of CSVs
  def to_csv
    id.to_s << "," << time_in.to_s << "," << time_out.to_s << "," << date.to_s << "," << description
  end
  
  
  
end
