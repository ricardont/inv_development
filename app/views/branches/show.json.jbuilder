
json.extract! @branch, :id, :name, :description, :city_id, :company_id, :manager_id, :created_at, :updated_at
json.boss @branch.company.user.nil? ? "" : "#{@branch.company.user.first_name} #{@branch.company.user.last_name}"
json.manager @branch.manager.nil? ? "" : "#{@branch.manager.first_name} #{@branch.manager.last_name}"
json.departments @branch.department
#                      .order('departments.name').each do |department|
#   json.id department.id
#   json.name department.name
#   json.manager department.manager_id
#   json.manager_name department.manager.nil? ? '' : "#{department.manager.first_name} #{department.manager.last_name}"
#
# end

