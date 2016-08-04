class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description 
      t.text :date

      t.timestamps
    end
  end
end
