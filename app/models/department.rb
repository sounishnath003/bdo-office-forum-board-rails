class Department < ApplicationRecord
     validate :search
    
    def self.search(search)
        if search
            department = Department.find_by(name: search, :officer_name => search, :designation => search, :contact => search)
            if department
                self.where(department_id: department)
            else
                Department.all.order("created_at DESC")
            end
        else
            Department.all.order("created_at DESC")
        end
    end

end
