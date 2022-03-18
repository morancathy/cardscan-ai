class Member < ApplicationRecord
    # ensure only valid data is saved to database
    #without presenece of these 2 things, entry is invalid and wont be save to db
    validates :user_id, presence: true
    validates :group_number, presence: true
    validates :payer_name, presence: true
end
