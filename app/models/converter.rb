class Converter

  include ActiveModel::Model

  attr_accessor :html, :haml

  validates :html, presence: true

end
