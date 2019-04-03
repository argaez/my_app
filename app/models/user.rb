class User < ApplicationRecord

	#validates :email, :format {width: expresión regular}
	#validates :phone, numericality: { only_integer: true }
	validates :phone, numericality: { greater_than: 5}, presence: true, length: { minimum: 10 }

has_many :posts  #Esto se hace manual, cuando se crea una llave foranea.
has_many :houses #Esto se hace manual, cuando se crea una llave foranea.
has_many :notes

end

#las validadiones se realizan antes, durante y despues del registro
#Se realizan desde la consola


##########ANTES
#User.create(title: "titulo") #Las validaciones pueden pasar mientras se crea un nuevo registos
#User.create!(title: "titulo") #Si el registro no le pongo el ! no me mostraría el error.

#########DURANTE

#user = User.new(title: "")
#user.save #Este me muestra que hay algo vacío
#user.save! # Este me indicaría el error.

#########DESPUES
#user = User.find(1)
#user.update(title: "")

#user = User.find(2)
#user.valid?
#user.invalid?