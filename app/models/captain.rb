class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    Captain.joins(boats: :classifications).where(classifications: {name: "Catamaran"}).uniq
  end

  def self.motorboats
    Captain.joins(boats: :classifications).where(classifications: {name: 'Motorboat'}).uniq
  end

  def self.sailors
    Captain.joins(boats: :classifications).where(classifications: {name: 'Sailboat'}).uniq
  end
end
