class WelcomeController < ApplicationController
  def index
    @meu_nome = params[:nome]
    @meu_curso = params[:curso]
    @status = params[:status]
  end
end
