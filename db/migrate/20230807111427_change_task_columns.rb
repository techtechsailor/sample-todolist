class ChangeTaskColumns < ActiveRecord::Migration[7.0]
  def up
    change_column :tasks, :completed, :boolean, default: false, nil: false
  end

  def down
    change_column :tasks, :completed, :boolean, default: nil, nil: true
  end
end
