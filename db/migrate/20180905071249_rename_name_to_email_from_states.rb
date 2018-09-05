class RenameNameToEmailFromStates < ActiveRecord::Migration[5.2]
  def change

	
	rename_column :states, :name, :email
  end
end
