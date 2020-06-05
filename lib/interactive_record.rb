require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord

  def self.table_name
    self.to_s.downcased.pluralized
  end

  def self.column_names
    DB[:conn].results_as_hash = true
  end

end
