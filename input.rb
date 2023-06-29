class Input

  def self.amount
    count = 0
    begin
      print "\nEnter the amount spent "
      amount = gets.chomp.to_f
      if amount <= 0
        count += 1
        raise "Wrong Input"
      end
    rescue
      if count == 3
        return false
      else
        puts "\n\tEnter numbers only!\n"
        retry
      end
    end
    return amount
  end


  def self.category
    count = 0
    begin
    print "\nEnter the category "
    category = gets.chomp.strip
    if category.empty? || category =~ /[0-9]/
      count += 1
      raise "Wrong Input"
    end
    rescue
      if count == 3
        return false
      else
        puts "\n\tUse Only Alphabets For Category Name!\n"
        retry
      end
    end
    return category.upcase
  end


  def self.date
    count = 0
    begin
      print "\nEnter the date (YYYY-MM-DD) "
      date= gets.chomp.to_s
      date1 = Date.strptime(date, '%Y-%m-%d')
    rescue Exception => e
      count += 1
      if count == 3
        return false
      else
        puts "\n\tInvalid Date Format! Re-enter(YYYY-MM-DD)\n"
        retry
      end
    end
    return date1
  end


  def self.num(string = "")
    num = 0
    count = 0
    loop do
      print "\nWhich record you want to #{string} "
      num = gets.chomp.to_i
      if num > 0 && num <= $arr.length && !num.to_s.empty?
        num -= 1
        break
      elsif count == 2
        return 'false'
      else
        count += 1
        puts "\n\tWrong Input/Selection!"
      end
    end
    return num
  end

end
