class CreateConferences < ActiveRecord::Migration[7.0]
  def change
    create_table :conferences do |t|
      t.string :title
      t.string :time

      t.timestamps
    end
  end
end
