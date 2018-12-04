class JobsMigration < ActiveRecord::Migration[5.1]
	def change

		
		create_table :jobs_calendar_events, force: true do |t|
			t.references 	:parent_obj, polymorphic: true
		
			t.string		:title
			t.text			:description

			t.datetime 		:start_at
			t.datetime 		:end_at

			t.timestamps

		end

		create_table :jobs_projects, force: true do |t|
			t.references	:lead
			t.string 		:title
			t.text 			:description
			t.integer		:priority
			t.integer		:status, default: 1
			t.hstore 		:properties

			t.timestamps
		end


		create_table :jobs_tasks, force: true do |t| 
			t.references 	:project
			t.references 	:created_by
			t.references 	:assigned_to
			
			t.string		:title
			t.string 		:slug
			t.text 			:description

			t.references 	:parent
			t.integer 		:lft
			t.integer		:rgt

			t.integer 		:priority
			
			t.datetime 		:started_at
			t.datetime 		:completed_at
			t.datetime 		:due_at

			t.integer 		:status, 			default: 1

			t.string 		:tags, array: true, default: '[]'
			t.hstore 		:properties

			t.timestamps
		end
		

		create_table :jobs_docs, force: true do |t|
			t.references 	:parent_obj, polymorphic: true
			t.references 	:user

			t.string		:title
			t.text 			:description

			t.timestamps
		end

	end
end



