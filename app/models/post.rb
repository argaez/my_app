class Post < ApplicationRecord
	validates :title, :content,  presence: true #Validates es un palabra reservada para validar dentro del modelo. Se puede poner cuantos datos queremos validar
	
	belongs_to :user
end

#las validadiones se realizan antes, durante y despues del registro
#Se realizan desde la consola


##########ANTES
#Post.create(title: "titulo") #Las validaciones pueden pasar mientras se crea un nuevo registos
#Post.create!(title: "titulo") #Si el registro no le pongo el ! no me mostraría el error.

#########DURANTE

#post = Post.new(title: "")
#post.save #Este me muestra que hay algo vacío
#post.save! # Este me indicaría el error.

#########DESPUES
#post = Post.find(1)
#post.update(title: "")

#post = Post.find(2)
#post.valid?
#post.invalid?