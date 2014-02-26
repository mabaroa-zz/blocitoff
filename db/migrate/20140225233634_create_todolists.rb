class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.string :description
      t.boolean :completed
      t.references :user, index: true

      t.timestamps
    end
  end
end
