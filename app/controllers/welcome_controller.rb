class WelcomeController < ApplicationController

  
  def index
  	@name = "Mi nombre es Sebastián Argáez" #podemos instanciar variables y se realiza para aplicaciones con interaccion de variables, para texto plano, no hay necesidad de hacerlas
  end

  def about
    #Operación post y al final quiero que redirija
    #redirect_to prices_path
  end
  
  def prices
  end

  def contact_us
  end

  #vistas/metodos/ acciones todos son sinonimos en el controlador
end
