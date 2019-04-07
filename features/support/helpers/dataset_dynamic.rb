require "csv"

class DatasetDynamic
   
  def remove_dataset
    csv = CSV.read("./features/support/dataset/cpfs.csv")
    novo_csv = []
    csv.each_with_index do |row, index|
      if index > 0
        novo_csv << row
      end
    end

    CSV.open("./features/support/dataset/cpfs.csv", "wb") do |csv|
      novo_csv.each do |row|
        csv << row
      end
    end
  end
end
