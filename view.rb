class ViewExpense

  def self.view
    if $arr.empty?
      puts "\tNo Entries...\n\n"
    else
      totalExpense = 0
      for i in 0...$arr.length do
        print "\t#{i+1} Amount: $#{$arr[i].amount}, Date: #{$arr[i].date}, Category: #{$arr[i].category}\n"
        totalExpense += $arr[i].amount.to_f
      end
      puts "\nTotal Expenses: #{totalExpense}\n\n"
    end
  end


  def self.chart(string)
    totalExpense = 0
    categoryExpense = 0
    chart = 0
    $arr.each do |i|
      totalExpense += i.amount.to_f
    end
    if $arr.any? {|i| i.category == string}
      $arr.each do |i|
        if i.category == string
          categoryExpense += i.amount.to_f
        end
      end
      chart = categoryExpense/totalExpense*30
      print ":"
      for i in 1..chart.to_i do
        print "|"
      end
      print"  #{string} = #{categoryExpense}\n\n"
    end
  end

end
