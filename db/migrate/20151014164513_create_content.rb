class CreateContent < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.column :line,     :string
      t.column :image,    :string
      t.column :story_id, :int

      t.timestamps
    end
  end
end
