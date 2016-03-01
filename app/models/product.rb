class Product < ActiveRecord::Base

belongs_to :category

def self.import(file)
  allowed_attributes = ["id","product_id","make","model","year","note","category"]
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    applications = find_by_id(row["id"]) || new
    applications.attributes = row.to_hash.slice(*row.to_hash.keys)
    # row.to_hash.select { |k,v| allowed_attributes.include? k }
    applications.save!
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

# file.path, packed: false, file_warning: :ignore

# beneficiary = Beneficiary.new()
#  beneficiary.name, beneficiary.gender, beneficiary.age, beneficiary.in_school, beneficiary.venue =
#  sheet.excelx_value(i, 2), sheet.excelx_value(i, 3), sheet.excelx_value(i, 4), sheet.excelx_value(i, 5), sheet.excelx_value(1, 1)
#  beneficiary.save!