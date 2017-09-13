class CreateProgLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :prog_languages do |t|

      t.string :name
      t.string :description
      t.string :version


      t.timestamps
    end
  end
end
