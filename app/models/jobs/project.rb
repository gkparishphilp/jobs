module Jobs
	class Project < ApplicationRecord

		belongs_to 	:lead, class_name: 'User'

		has_many 	:tasks

	end
end