class WelcomeController < ApplicationController
  def index
    cookies[:curso] = 'Curso de Ruby on Rails'
    session[:curso] = 'Curso de Ruby on Rails'
    @meu_nome = params[:nome]
    @meu_curso = params[:curso]
    @status = params[:status]
  end
end
