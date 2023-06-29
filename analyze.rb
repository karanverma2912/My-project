class AnalyzeExpense
  def self.analyze
    if $arr.empty?
      puts "\tNo Entries...\n\n"
    else
      puts "Analize Your Expenses\n\n"
      totalExpense = 0
      $arr.each do |i|
        totalExpense += i.amount.to_f 
      end
      categoryExpense = 0
      if $arr.any? {|i| i.category != 'FOOD' && i.category != 'ENTERTAINMENT' && i.category != 'TRANSPORTATION'}
        $arr.each do |i|
          if i.category != 'FOOD' && i.category != 'ENTERTAINMENT' && i.category != 'TRANSPORTATION'
            categoryExpense += i.amount.to_f
          end
        end
        chart = categoryExpense/totalExpense*30
        print ":"
        for i in 1..chart.to_i do
            print "|"
          end
        print"  Unknown = #{categoryExpense}\n\n"
      end
      ViewExpense.chart('FOOD')
      ViewExpense.chart('ENTERTAINMENT')
      ViewExpense.chart('TRANSPORTATION')
      puts "Total Expenses: #{totalExpense}\n\n"
    end
  end
end
