class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :name
      t.string :pdf
      t.references :user
      t.boolean :public

      t.timestamps
    end
    add_index :archives, :user_id
  end
end
