require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "money"
)

class User < ActiveRecord::Base
end

class Account <ActiveRecord::Base
end



User.create("Jon")

#name type balance transaciton   - time amount category source
Account.create([name: "Jon", kind: "savings", balance: 2400, transaction: [time: "2pm", amount: 54.25, category: "education", payee: "PBBC" ]])

# Musical.create([
#   {title: "Cats", year: 1989, composer: "Toby Schaeffer", lyricist: "Chuck Schaeffer"},
#   {title: "Shpadoinkle", year: 2015, composer: "Trey Parker and Rich Sanders", lyricist: "Trey Parker"},
#   {title: "highschool the musical", year: 1932, composer:"hans zimmer", lyricist: "ja rule"}
# ])
#
#
# class User
#
#   attr_accessor :name     # :account ??
#
#
#
#   def initialize (name)      #account = [ ]
#     @name = name.capitalize
#     # @account = account
#   end
#
