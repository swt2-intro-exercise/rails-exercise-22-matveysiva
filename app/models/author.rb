class Author < ApplicationRecord
    validates :last_name, presence: true, allow_blank: false
    validates :first_name, presence: true, allow_blank: false
    validates :homepage, presence: true, allow_blank: false

    has_and_belongs_to_many :papers
    
    def name
        return "#{first_name} #{last_name}"
    end
end
