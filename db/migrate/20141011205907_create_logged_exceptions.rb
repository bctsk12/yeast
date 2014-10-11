class CreateLoggedExceptions < ActiveRecord::Migration
  def change
    create_table :logged_exceptions do |t|
      t.string :name
      t.string :message
      t.text :backtrace

      t.timestamps null: false
    end
  end
end
