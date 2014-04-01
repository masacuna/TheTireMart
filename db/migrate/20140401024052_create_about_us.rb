class CreateAboutUs < ActiveRecord::Migration
  def change
    create_table :about_us do |t|
      t.text :content
      t.string :header
      t.string :contact

      t.timestamps
    end
  end
end
