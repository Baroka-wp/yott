class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string  :name, null:false ,uniqueness: true, length:{ maximum:60 }
      t.string :content,null:false

      t.timestamps
    end
  end
end
