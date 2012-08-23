class CreateFillTimesheets < ActiveRecord::Migration
  def change
    create_table :fill_timesheets do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.date :date
      t.string :department
      t.text :description

      t.timestamps
    end
  end
end
