class DropAvisTable < ActiveRecord::Migration[7.1]
  def up
    drop_table :avis
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
