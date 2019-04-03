class ChangeTextToString < ActiveRecord::Migration[5.2]
  
  	  def self.up
  		change_table :cities do |t| #En plural el nombre de la tabla
  		t.change :country, :string
  		end
	end

	def self.down
		change_table :cities do |t| #En plural el nombre de la tabla
		t.change :country, :text
		end
	end
end


