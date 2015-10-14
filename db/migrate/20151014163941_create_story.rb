class CreateStory < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.column :title, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
