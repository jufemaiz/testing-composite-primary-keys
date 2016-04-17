require 'active_model'

class ApiModel
  extend ActiveModel::Naming
  extend ActiveModel::Callbacks
  include ActiveModel::Model
  include ActiveModel::AttributeMethods
  include ActiveModel::Associations
  include ActiveModel::Conversion
  include ActiveModel::Dirty
  include ActiveModel::Validations

  belongs_to :device,  foreign_key: :device_id

  define_attribute_methods :device_id
  attr_accessor :device_id

  # need hash like accessor, used internal Rails
  #
  # @param attr [?] blah
  # @return ?
  def [](attr)
    self.send(attr)
  end

  # need hash like accessor, used internal Rails
  #
  # @param attr [?] blah
  # @return ?
  def []=(attr, value)
    self.send("#{attr}=", value)
  end

  def initialize()
    @device_id = 1
    self
  end

end
