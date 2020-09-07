class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.references :user, index: true
      t.references :meeting, index: true

      t.timestamps
    end
  end
end
