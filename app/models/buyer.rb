class Buyer < ActiveRecord::Base
	validates :buy_id, format: { with: /\d{3}-\d{4}-\d{4}/, message: "잘못된 입력입니다." }
	validates :address, presence: true, allow_blank: false
end
