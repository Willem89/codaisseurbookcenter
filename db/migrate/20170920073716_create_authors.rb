class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :author_name
      t.string :author_age

      t.timestamps
    end
  end
end
