require 'date'
class FilterExpense
  def self.filter
    if $arr.empty?
      puts "\tNo Entries...\n\n"
    else
      puts "-Filter Expenses-\n"
      print "Enter the Category/Date to Filter "
      input = gets.chomp.upcase
      puts
      x = true
      $arr.each do |i|
        if i.category == input || i.date.to_s == input
          puts "\tAmount: $#{i.amount}, Date: #{i.date}, Category: #{i.category}"
          x = false
        end
      end
      if x
        puts "\tWrong Input Or No Such Data Found!"
      end
      puts
    end
  end
end
