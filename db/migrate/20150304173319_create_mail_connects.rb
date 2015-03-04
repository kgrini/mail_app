class CreateMailConnects < ActiveRecord::Migration
  def change
    create_table :mail_connects do |t|

      t.timestamps null: false
    end
  end
end
