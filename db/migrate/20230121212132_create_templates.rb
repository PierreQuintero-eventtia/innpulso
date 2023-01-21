class CreateTemplates < ActiveRecord::Migration[7.0]
  def up
    create_table :templates do |t|
      t.belongs_to :category
      t.string :name
      t.string :author

      t.timestamps
    end
  end

  def down
    drop_table :templates
  end
end
