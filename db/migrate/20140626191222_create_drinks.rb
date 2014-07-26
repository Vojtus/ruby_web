class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :category
      t.string :obr1
      t.string :obr2
      t.string :obr3
      t.string :autor
      t.string :time
      t.string :iba
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4
      t.text :text5

      t.timestamps
    end
  end
end
