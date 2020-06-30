class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: {minimum: 4}


  def self.to_csv
    attributes = %w{id email name}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
