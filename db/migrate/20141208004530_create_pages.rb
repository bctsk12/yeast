class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :exception
      t.string :message_matcher
      t.text :body

      t.timestamps null: false
    end
  end
end
