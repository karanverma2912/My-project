class EditExpense
  def self.edit
    if $arr.empty?
      puts "\tNo Entries...\n\n"
    else
      puts "-Edit Expenses-\n\n"
      ViewExpense.view
      num = Input.num("Edit")
      amount = Input.amount if num.to_s != 'false'
      category = Input.category if amount != false && num.to_s != 'false'
      date = Input.date if amount != false && category != false && num.to_s != 'false'
      if amount != false && category != false && date != false && num.to_s != 'false'
        $arr[num].amount  = amount
        $arr[num].category = category
        $arr[num].date = date
        puts "\nThe Expenses Edited Successfully! \n\n"
      else
        puts "\n\tTry Again!!!\n\n"
      end
    end
  end
end
