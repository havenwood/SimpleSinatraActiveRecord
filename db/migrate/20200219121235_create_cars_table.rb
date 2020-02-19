class CreateCarsTable < ActiveRecord::Migration[6.0]
	def up
		create_table :cars do [t]
			t.string :brand
			t.string :color
		end
	end
	
	def down
		drop_table :cars
	end
end
