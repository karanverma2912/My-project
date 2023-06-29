class DeleteExpense
  def self.delete
    if $arr.empty?
      puts "\tNo Entries...\n\n"
    else
      puts "-Delete Expenses-\n\n"
      ViewExpense.view
      num = Input.num("Delete")
      if num != 0
        $arr.delete_at(num)
        puts "\nThe Expenses Deleted Successfully! \n\n"
      else
        puts "\n\tTry Again!!!\n\n"
      end
    end
  end
end
