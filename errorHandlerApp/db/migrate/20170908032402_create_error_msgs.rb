class CreateErrorMsgs < ActiveRecord::Migration[5.1]
  def change
    create_table :error_msgs do |t|

      t.string :message
      t.string :description
      t.string :photo
      t.string :solution
      t.string :category
      t.belongs_to :prog_language, index: true


      t.timestamps
    end
  end
end
