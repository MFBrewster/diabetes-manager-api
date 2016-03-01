class AlterDoseTable < ActiveRecord::Migration
  def change
    change_column :doses, :time,  :text
  end
end
