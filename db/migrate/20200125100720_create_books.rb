class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :student_id
      t.string :book_name
      t.string :book_code
      t.string :date

      t.timestamps
    end
  end
end
