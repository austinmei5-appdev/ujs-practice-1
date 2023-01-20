class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :text
      t.string :status, default: "Not yet started"
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
