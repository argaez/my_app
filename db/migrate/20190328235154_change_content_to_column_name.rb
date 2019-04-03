class ChangeContentToColumnName < ActiveRecord::Migration[5.2]
  

  def self.up
  		rename_column :posts, :content, :contenido # Nombre de la columna va a pasar de content a contenido
  		end
	

	def self.down
		rename_column :posts, :contenido, :content #Todo 
	end
	
  
end
