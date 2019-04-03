class BlogController < ApplicationController
	#podemos hacer un call back para no tener que repetir el código en el CRUD donde estoy repitiendo,
	#un ejemplo es: 
	#before_action :find_id_blog only: [:show, :edit, :update, :destroy] al hacer esto debemo borrar los códigos que se repiten allí, y ponerlo como metodo privado, 
	#ejemplo 
	#def find_id_blog
	#@blog = Blog.find(params[:id]) #aquí se pone el código que se está repitiendo
	#end
  
  	def index
      @blogs = Blog.all #Se pone All porque queremos mostrar todos los Blogs en el home y por esta misma razón en plural Blogs
  	
 	end
  	

    def new
      @blog = Blog.new #Con esta nuevo controlador vamos a empezar a pedir información del usuario
      ##title y content se renderizan vacios o nil
    end

	def create
		@blog = Blog.new(blog_params)

		if @blog.save
			redirect_to blog_index_path #notice: "El blog ha sido guardado exitosamente--- también se puede así."
			flash[:notice] = "El blog ha sido guardado exitosamente" #se puede con alert cuando hay un error.
		else
			flash[:alert] = "El post no ha sido guardado, favor repetir la información"
			render :new
		end
	end

	def edit
	@blog = Blog.find(params[:id])	#necesito el parametro que voy a editar, un edit necesita un update
	end

	def update
	@blog = Blog.find(params[:id]) #un update requiere antes un edit
		
		if @blog.update(blog_params)
			redirect_to blog_index_path
		else
			render :edit
		end
	end

	def show
		@blog = Blog.find(params[:id]) #El nos trae los parametros del blog y buscamos el ID
	end

	def destroy
		blog = Blog.find(params[:id])
		blog.destroy

		redirect_to blog_index_path
		flash[:alert] = "El post ha sido eliminado satisfactoriamente"
	end
	
private
	def  blog_params #se llama igual al argumento del create, los blog params también se le llaman strong paremeters
		params.require(:blog).permit(:title, :content)
	end

	#def find_id_blog
	#@blog = Blog.find(params[:id]) #aquí se pone el código que se está repitiendo y en destoy se indexa con @ el blog.destroy
	#end

end
