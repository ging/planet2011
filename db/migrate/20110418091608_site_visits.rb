class SiteVisits < ActiveRecord::Migration
  def self.up
    change_table :sites do |t|
      t.column :visits, :integer, :default => 0
    end
  end

  def self.down
    change_table :sites do |t|
      t.remove :visits
    end
  end
end
