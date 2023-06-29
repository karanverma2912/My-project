require_relative "add"
require_relative "view"
require_relative "delete"
require_relative "edit"
require_relative "filter"
require_relative "analyze"
require_relative "input"
require_relative "export"
require 'date'
require 'csv'

$arr = []

class Data
  attr_accessor :date, :amount, :category
  def initialize(amount,date,category)
    @amount = amount
    @date = date
    @category = category
  end
end

class Main
  def Main.start
    loop do
      puts "Please Enter Your Choice :- \n1. Add Expenses \n2. View Expenses \n3. Filter Expenses \n4. Edit Expenses \n5. Delete Expenses \n6. Analyze Your Expenses \n7. Export To CSV \n8. Exit"
      choice = gets.chomp.to_i
      puts

      case choice
          when 1
            AddExpense.add
          when 2
            ViewExpense.view
          when 3
            FilterExpense.filter
          when 4
            EditExpense.edit
          when 5
            DeleteExpense.delete
          when 6
            AnalyzeExpense.analyze
          when 7
            Export.toCsv
          when 8
            puts "Exiting...."
            break
          else
            puts "Invalid Choice\n\n"
      end

    end
  end
end

Main.start



