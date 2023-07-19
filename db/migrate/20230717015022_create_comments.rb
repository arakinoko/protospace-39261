class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text       :content,    null: false
      t.references :prototype,  null: false, foreign_kye: true
      t.references :user     ,  null: false, foreign_kye: true
      t.timestamps
    end
  end
end
