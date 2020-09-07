class AddUserToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetings,:user,index: true
  end
end
