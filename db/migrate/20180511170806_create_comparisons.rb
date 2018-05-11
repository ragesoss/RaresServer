class CreateComparisons < ActiveRecord::Migration[5.2]
  def change
    create_table :comparisons do |t|
      t.string :chosen
      t.string :unchosen
      t.string :client_info

      t.timestamps
    end
  end
end
