class Export
    def self.toCsv
        fileName = 'data.csv'
        CSV.open(fileName,'a') do |csv|
            $arr.each do |i|
                csv <<[i.amount,i.date.to_s,i.category,]
            end
        end
        puts "Data Exported Successfully!!\n\n"
    end
end
