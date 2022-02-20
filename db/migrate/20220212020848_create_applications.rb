class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
# item:項目名、space:保管場所、stock:在庫数、required:最低在庫数
      t.string :item
      t.string :space
      t.integer :stock
      t.integer :required
      t.timestamps
    end
  end
end
