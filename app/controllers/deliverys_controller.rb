class DeliverysController < ApplicationController
  # before_action :find_customer, only: [:new, :create]


  def index
    @deliveries = Delivery.all
  end

  def new
    @delivery = Delivery.new
    
  end

  def create
    binding.break
    @customer = Customer.find(params['delivery']['customer_id'])
    @delivery = @customer.deliveries.create()
    book = Book.find(params['delivery']['book_id'])
    @delivery.books << book
   

    if  @delivery.books.include? book
      redirect_to customer_path(@customer), notice: 'oder  was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @delivery = Delivery.find(params[:id])
  end

  private

  def find_customer
    @customer = Customer.find(params[:customer_id])
  end

  def delivery_params
    params.require(:delivery).permit(:date_submitted, :status, :subtotal, :customer_id)
  end
end
