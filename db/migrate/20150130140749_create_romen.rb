class CreateRomen < ActiveRecord::Migration
  def change
    create_table :romen do |t|

      t.timestamps
    end
  end
end
