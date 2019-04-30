module Jobs
	class Project < Task

		belongs_to 	:lead, class_name: 'User'

		has_many 	:tasks

	end
end