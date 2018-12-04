module Jobs
	class Task < ApplicationRecord

		enum status: { 'trash' => -100, 'archive' => -50, 'draft' => -10, 'pending' => 0, 'prioritized' => 10, 'active' => 20, 'completed' => 30 }

		belongs_to 	:project
		belongs_to 	:created_by, class_name: 'User'
		belongs_to 	:assigned_to, class_name: 'User'
	end
end