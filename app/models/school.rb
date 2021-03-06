class School < ActiveRecord::Base
  attr_accessible :name, :principal_id, :street, :city, :phone, :homepage,
    :social, :district, :note, :term

  validates_presence_of :name

  default_scope :order => :name

  has_many :principals
  has_many :teachers

  def display_name
    name
  end
end
