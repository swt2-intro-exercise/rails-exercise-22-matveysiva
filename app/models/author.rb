class Author < ApplicationRecord
    validates :last_name, presence: true, allow_blank: false
    validates :first_name, presence: true, allow_blank: false
    validates :homepage, presence: true, allow_blank: false

    def name
        return "#{first_name} #{last_name}"
    end
end
