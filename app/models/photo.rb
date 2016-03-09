class Photo < ActiveRecord::Base

  def self.import(file)
  
  if file
  
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      photos = find_by(id: row["id"]) || new
      photos.attributes = row.to_hash.slice(*row.to_hash.keys)
      
       #row.to_hash.select { |k,v| allowed_attributes.include? k }
      photos.save!
    end

  else
    belongs_to :category
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Roo::Csv.new(file.path, packed: false, file_warning: :ignore)
  when ".xls" then Roo::Excel.new(file.path, packed: false, file_warning: :ignore)
  when ".xlsx" then Roo::Excelx.new(file.path, packed: false, file_warning: :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end

end
end
