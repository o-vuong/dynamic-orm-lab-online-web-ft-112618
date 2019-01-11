require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord

  attr_accessor :id, :name, :grade
  def self.table_name

    "#{self.to_s.downcase}s"
  end

  def self.column_names
    array=["id", "name","grade"]
    array

  end

  def initialize(options={})
   options.each do |property, value|
     self.send("#{property}=", value)
   end
 end
end
