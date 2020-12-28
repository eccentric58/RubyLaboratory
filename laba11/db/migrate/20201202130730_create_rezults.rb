class CreateRezults < ActiveRecord::Migration[6.0]
  def change
    create_table :rezults do |t|
      t.string :input
      t.string :output

      t.timestamps
    end
  end
end
