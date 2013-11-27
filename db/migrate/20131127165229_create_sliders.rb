class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.belongs_to :album
      t.timestamps
    end
  end
end
