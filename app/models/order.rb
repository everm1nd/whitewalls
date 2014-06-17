class Order
  include ActiveModel::Model
  extend ActiveModel::Naming

  attr_accessor :artwork, :email, :name, :address, :comment
  validates_presence_of :artwork, :email

  def notify_admin
    OrderMailer.new_order(self).deliver
  end

  def artwork_id=(id)
    @artwork = Artwork.find id
  end

  def persisted?
    false
  end
end