class CreateSecondClassRanks < ActiveRecord::Migration
  def change
    create_table :second_class_ranks do |t|
      t.integer :advancement_id
      t.string :one_pi
      t.date :one_pi_date
      t.string :one_li
      t.date :one_li_date
      t.string :two_pi
      t.date :two_pi_date
      t.string :two_li
      t.date :two_li_date
      t.string :three_pi
      t.date :three_pi_date
      t.string :three_li
      t.date :three_li_date
      t.string :four_pi
      t.date :four_pi_date
      t.string :four_li
      t.date :four_li_date
      t.string :five_pi
      t.date :five_pi_date
      t.string :five_li
      t.date :five_li_date
      t.string :six_pi
      t.date :six_pi_date
      t.string :six_li
      t.date :six_li_date
      t.string :seven_pi
      t.date :seven_pi_date
      t.string :seven_li
      t.date :seven_li_date
      t.string :eight_pi
      t.date :eight_pi_date
      t.string :eight_li
      t.date :eight_li_date
      t.string :nine_pi
      t.date :nine_pi_date
      t.string :nine_li
      t.date :nine_li_date
      t.string :ten_pi
      t.date :ten_pi_date
      t.string :ten_li
      t.date :ten_li_date
      t.string :eleven_pi
      t.date :eleven_pi_date
      t.string :eleven_li
      t.date :eleven_li_date
      t.string :twelve_pi
      t.date :twelve_pi_date
      t.string :twelve_li
      t.date :twelve_li_date
      t.string :thirteen_pi
      t.date :thirteen_pi_date
      t.string :thirteen_li
      t.date :thirteen_li_date
      t.string :fourteen_pi
      t.date :fourteen_pi_date
      t.string :fourteen_li
      t.date :fourteen_li_date
      t.string :fifteen_pi
      t.date :fifteen_pi_date
      t.string :fifteen_li
      t.date :fifteen_li_date
      t.string :sixteen_pi
      t.date :sixteen_pi_date
      t.string :sixteen_li
      t.date :sixteen_li_date
      t.string :seventeen_pi
      t.date :seventeen_pi_date
      t.string :seventeen_li
      t.date :seventeen_li_date
      t.string :eighteen_pi
      t.date :eighteen_pi_date
      t.string :eighteen_li
      t.date :eighteen_li_date
      t.string :nineteen_pi
      t.date :nineteen_pi_date
      t.string :nineteen_li
      t.date :nineteen_li_date
      t.string :twenty_pi
      t.date :twenty_pi_date
      t.string :twenty_li
      t.date :twenty_li_date
      t.string :twentyone_pi
      t.date :twentyone_pi_date
      t.string :twentyone_li
      t.date :twentyone_li_date
      t.string :twentytwo_pi
      t.date :twentytwo_pi_date
      t.string :twentytwo_li
      t.date :twentytwo_li_date
      t.string :twentythree_pi
      t.date :twentythree_pi_date
      t.string :twentythree_li
      t.date :twentythree_li_date
      t.string :twentyfour_pi
      t.date :twentyfour_pi_date
      t.string :twentyfour_li
      t.date :twentyfour_li_date
      t.string :twentyfive_pi
      t.date :twentyfive_pi_date
      t.string :twentyfive_li
      t.date :twentyfive_li_date

      t.timestamps
    end
  end
end
