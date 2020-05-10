class CreateLeftMatrix < ActiveRecord::Migration[6.0]
  def change
    create_table :left_matrices do |t|
      t.integer :matrix, array: true, default: []
      t.string :matrix_type

      t.timestamps
    end
  end
end
