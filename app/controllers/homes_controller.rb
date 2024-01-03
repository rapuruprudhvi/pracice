class HomesController < ApplicationController
   def index
     if current_author
       @books = Book.all
     elsif current_customer
       @customer = current_customer
       @customer_books = @customer.books
     else
       @books = Book.all
     end
   end
 end
 