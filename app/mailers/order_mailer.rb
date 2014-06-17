class OrderMailer < ActionMailer::Base
	layout 'mail'

  default from: "from@example.com"

  def new_order(order) # Blue Monday, hah
  	@order = order
  	mail(to: 'everm1nd.mail@gmail.com', subject: 'WhiteWalls: New Order')
  end
end
