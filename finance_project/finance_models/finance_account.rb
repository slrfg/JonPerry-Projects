
class Account

  attr_accessor :name, :kind, :balance, :transaction
  def initialize (name, kind, balance, transaction[ ] )  #does transactions need to be defined as [ ]?
    @name = name
    @kind = kind
    @balance = balance    #need initial deposit to start account
    @transaction = transaction   #initial deposit + source - cash, check#
  end


  def create_transaction_credit

    puts "Enter the amount of money to be deposited:"
    amount = gets.chomp.f
    puts "Enter the source of funds (choose \"cash\" or enter check number and issuer)."
    source = gets.chomp

    @balance = @balance + amount  # +=  ?
    time = Time.new
    category = "savings"
    transaction = [time, amount, category, payee]
    @transaction = transaction.push         #or is it just   @transaction = transaction   ??

  end


  def create_transaction_debit
    #if account is overdrawn puts alert

      puts "Enter the payment category:"  #need a menu here to choose category personal, business, other, etc.

      category = gets.chomp

      puts "Enter the amount of money to be paid:"
      amount = gets.chomp.f

      puts "Enter the Payee:"
      payee = gets.chomp

      @balance = @balance - amount    # -=  ?
      time = Time.new

      transaction = [time, amount, category, payee]
      @transaction = transaction.push      #or is it just   @transaction = transaction   ??
  end


  def delete_transaction

    @transaction.each do
      puts transaction.each_with_index
    end

    puts "Choose the number of the transaction to be deleted:"
    x = gets.chomp.i      #should prompt the user to verify the selection before deletion
    @transaction = @transaction.delete_at(x)
    puts "The record has been deleted."

  end

  #puts list_transactions as reference before running edit method:
  # def edit_account   #and double check that choice is correct
  #
  #
  # end
  #

##the next two methods will be selected by the category of data chosen by user

  def edit_transaction_amount
    puts "Choose the number of the transaction to be edited:"
    x = gets.chomp.i     #should prompt the user to verify the selection before editing
    puts "Transaction to be edited:"
    puts @transaction[x]   #if incorrect, give option to select again
    puts "Enter the new amount for the transaction:"
    new_amount == gets.chomp.f

      if @transaction[x]_at_(2) = "savings"
        @balance = @balance - @transaction[x]_at_(1) + new_amount
      else
        @balance = @balance + @transaction[x]_at_(1) - new_amount
      end

    @transaction[x]_at_(1) = new_amount
    puts "Edited transaction:"
    puts @transaction[x]
  end

  def edit_transaction_data_not_amount
    puts "Choose the number of the transaction to be edited:"
    x == gets.chomp.i     #should prompt the user to verify the selection before editing
    puts "Transaction to be edited:"
    puts @transaction[x]
    puts "Enter the transaction category  "
    input = gets.chomp
    if input = "1"
      puts "Enter the new amount:"
      @transaction[x].replace_at(2)         ######## PICKUP HERE
  end

  def list_transactions
    @transaction.each do |x|
      puts transaction[x]
    end
  end

end

#     Users should be able to enter their transactions (which have an payee, an amount, a date, and a category). They can see a list of all transactions, edit / delete transactions, and see their current balance.
#
# Users should be able to look at transactions by category (i.e. filtering), and see the total 'cost' of transactions in that category.

#!/usr/bin/ruby -w

# time = Time.new
#
# # Components of a Time
# puts "Current Time : " + time.inspect
# puts time.year    # => Year of the date
# puts time.month   # => Month of the date (1 to 12)
# puts time.day     # => Day of the date (1 to 31 )
# puts time.wday    # => 0: Day of week: 0 is Sunday
# puts time.yday    # => 365: Day of year
# puts time.hour    # => 23: 24-hour clock
# puts time.min     # => 59
# puts time.sec     # => 59
# puts time.usec    # => 999999: microseconds
# puts time.zone    # => "UTC": timezone name
#
#
#

  # def list_gladiators
  #   if @gladiators.empty?
  #     puts "There ain't no gladiators."
  #   else
  #     puts "Introducing the gladiators:"
  #     @gladiators.each do |gladiator|
	# puts "#{gladiator.name} wields a #{gladiator.weapon}."
  #     end
  #   end
  # end
  #
  #when menu promps new account, get name, type, initial deposit
  #name will into user and into account
