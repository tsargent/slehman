class AddTime2ToEvents < ActiveRecord::Migration
  def change
    add_column :events, :time2, :time
  end
end
