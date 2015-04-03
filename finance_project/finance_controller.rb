require 'active_record'
require 'pry'
require_relative finance_models/financeAR.rb
require_relative database
require_relative finance_models/finance_user.rb
require_relative finance_models/finance_account.rb



  puts ""       #clear screen?
  puts "****************************"
  puts "Your Personal Finance Tracker"
  puts "****************************"

  loop do
              #USER MENU
    puts ""
    puts "Please choose an option by number or Q to quit:"
    puts ""

    puts "1. Enter your user name." #option to list users, in case you forget your name
                                      #option to have a password
    puts "2. Create a new user."
    puts "3. Delete a user"
    puts "Q  quit"

   input = gets.chomp.upcase

   case input

     when "1"
       #get name, validate name, if false say name taken and return to opening menu
       puts "under construction"
       break

     when "2"
       puts "under construction"
       #when menu prompts new account, get name, (password), account_type, initial deposit
       #name will be assigned into user and into account
       # bob = User.create     just create the account in the method
       # bob.accounts.create
       break
     when "3"
       puts "under construction"
       #double-check before deleting (ask for password).
      # Warn that all transactions related to user will be deleted too

      @user.delete_at(name)

     when "Q"
       break

     else
       puts ""
       puts "Invalid entry. Please try again."

   end

end

        #ACCOUNTS MENU - need another menu inside at the top of this loop allowing selction of account to be viewed,
              #or for creation of New Account

loop do while input != "Q"

  puts ""
  puts "Please choose an option by number or Q to quit:"
  puts ""
  puts "1. Check your balance"
  puts "2. Record a new transaction"
  puts "3. Review past transactions"
  puts "4. Edit a past transaction"
  puts "Q. Quit"
  puts ""

  input = gets.chomp.upcase

# ? after 1 - 4, prompt gets.chomp - M to continue or 5 to quit
  case input
  #check balance
    when "1"

      puts "under construction"
      #record a new transaction
    when "2"
      puts "under construction"
    #review past transactions
    when "3"
      puts "under construction"
      #edit a past transaction
    when "4"
      puts "under construction"

    when "Q"

      break

    else
      puts ""
      puts "Invalid entry. Please try again."

  end

end

puts ""
puts "Good bye."
puts ""
