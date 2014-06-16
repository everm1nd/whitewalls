class OrderMailer < ActionMailer::Base
	layout 'mail'

  default from: "from@example.com"

  def new_order(artwork, user_email) # Blue Monday, hah
  	@artwork    = artwork
  	@user_email = user_email
  	mail(to: 'everm1nd.mail@gmail.com', subject: 'WhiteWalls: New Order')
  end
end
