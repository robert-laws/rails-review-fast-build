class CreateBiographies < ActiveRecord::Migration[5.1]
  def change
    create_table :biographies do |t|
      t.text :content
      t.belongs_to :author
    end
  end
end
