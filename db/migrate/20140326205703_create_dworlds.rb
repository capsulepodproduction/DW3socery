class CreateDworlds < ActiveRecord::Migration
  def change
    create_table :dworlds do |t|
      t.string :name
      t.string :email
      t.string :question
      t.datetime :datesend

      t.timestamps
    end
  end
end
