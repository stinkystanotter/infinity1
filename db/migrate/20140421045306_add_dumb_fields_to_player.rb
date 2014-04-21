class AddDumbFieldsToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :is_vd_2k13_starter, :boolean
    add_column :players, :is_otter_2k13_starter, :boolean
    add_column :players, :is_vd_2k13_bench, :boolean
    add_column :players, :is_otter_2k13_bench, :boolean
  end
end
