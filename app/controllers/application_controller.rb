class ApplicationController < ActionController::Base
  before_action :set_locale
  def set_locale
    if params[:locale] # Procura um prametro chamado locale
      cookies[:locale] = params[:locale] # Guarda o parametro (caso exista) de locale dentro de um cookie
    end

    if cookies[:locale] # Verifica se ha um cookie com a chave locale
      if I18n.locale != cookies[:locale] # Verifica se o locale que está na app é diferente do que esta armzenado
        I18n.locale = cookies[:locale] # Se for diferente, ele joga o idioma de locale dentro do cookie atual
      end
    end
  end
end
