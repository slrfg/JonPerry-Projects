
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "money"
  )
  #created database money in psql - just go into psql(from wherever in terminal)
  # type: CREATE DATABASE money;     that's it. no extension


class User < ActiveRecord::Base
  has_many :accounts
  validates :name, uniqueness: { case_sensitive: false }
  #validates :password??  People hate passwords - should make it optional.
end
#
# class Person < ActiveRecord::Base
#   validates :name, presence: true
# end
#
# Person.create(name: "John Doe").valid? # => true
# Person.create(name: nil).valid? # => false


class Account< ActiveRecord::Base
  belongs_to :user, dependent: :destroy
	has_many :transactions
	has_one :balance
  has_one :category_type   #cannot use the word "type" as a column name
	# has_one :kind/type   #savings, checking, business, personal
end

# bob = User.create
# bob.accounts.create

class CreateFinance <ActiveRecord::Migration      #??not sure about the naming of the table class - check

	def initialize

		create_table :users do |column|
			column.string :name

		end

		create_table :accounts do |column|
      column.     :timestamp                #??? WHAT TYPE OF COLUMN FOR TIMESTAMP
			column.float :balance
			column.belongs_to :user
      column.string :transactions
			column.string :category_type
		end

	end
end
