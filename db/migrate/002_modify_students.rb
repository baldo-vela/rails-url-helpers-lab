class ModifyStudents < ActiveRecord::Migration

    # Create a new boolean attribute called active in the students table. 
    def change
        add_column :students, :active, :boolean, default: false
    end

end