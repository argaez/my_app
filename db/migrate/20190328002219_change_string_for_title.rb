class ChangeStringForTitle < ActiveRecord::Migration[5.2]

	#Un Up y un Down solo se deberían usar cuando tenemos realmente problemas.

  def self.up
  		change_table :posts do |t| #En plural el nombre de la tabla
  		t.change :title, :text
  		end
	end

	def self.down
		change_table :posts do |t| #En plural el nombre de la tabla
		t.change :title, :string
		end
	end
end


####################
#1.Cambiar el tipo de dato de la columna, ejemplo: string to text
#2. Cambiar el nombre de la columna. ejemplo: name a nombre 
#3. Añadir nuva columna a la tabla. rails g migration ADDXXXTOXXX column_name:data_type
#4. Eliminar una columna de la tabla. rails g migration REMOVEXXXFROMXXXX column_name:data_type
#5. Crear un nuevo modelo/tabla. rails g model ModelName column_name:data_type
#6. rails db:migrate - rails db:migrate:status - rails db:rollback
###################