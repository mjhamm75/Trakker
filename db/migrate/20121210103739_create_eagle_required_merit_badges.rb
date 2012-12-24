class CreateEagleRequiredMeritBadges < ActiveRecord::Migration
  def change
    create_table :eagle_required_merit_badges do |t|
      t.string :name
      t.boolean :complete
      t.date :date_complete

      t.timestamps
    end
  end
end
