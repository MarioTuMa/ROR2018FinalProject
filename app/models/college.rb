class College < ApplicationRecord
  require 'csv'
  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      College.create! row.to_hash
    end
  end
end
