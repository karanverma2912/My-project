class AddExpense
  def self.add
    puts "-Add Expenses-"
      amount = Input.amount
      category = Input.category if amount != false
      date = Input.date if amount != false && category != false
      if amount != false && category != false && date != false
        data = Data.new(amount,date,category)
        $arr.push(data)
        puts "\nExpenses Added Successfully! \n\n"
      else
        puts "\n\tTry Again!!!\n\n"
      end
  end
end
