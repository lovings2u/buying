class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|

    	t.string :buy_index #구매번호
    	t.string :buy_date #구매일자
    	t.string :buy_id #구매자 핸드폰번호
    	t.string :address #구매자 주소(주소 API)
      t.string :detail_address #구매자 상세주소
    	t.string :name #구매자 성명
    	t.string :menu_index #구매상품번호
    	t.integer :menu_volume #구매상품개수
    	t.integer :menu_total #총구매금액
    	t.string :recomm #추천인 

      t.timestamps
    end
  end
end
