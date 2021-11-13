class Author < ApplicationRecord
    validates :last_name, presence: true,
                    length: { minimum: 1 }
    has_and_belongs_to_many :papers
    def name() 
        return self.first_name + " " +self.last_name
    end 
end
