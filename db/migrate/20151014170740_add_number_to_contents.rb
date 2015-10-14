class AddNumberToContents < ActiveRecord::Migration
  def change
    add_column :contents, :number, :int, :default => 0
  end
end
