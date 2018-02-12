class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.datetime :publication_date
      t.belongs_to :author

      t.timestamps
    end
  end
end
