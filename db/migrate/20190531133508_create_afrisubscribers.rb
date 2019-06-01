class CreateAfriSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :afrisubscribers do |t|
      t.string :name
      t.string :email
      t.string :source

      t.timestamps
    end
  end
end
