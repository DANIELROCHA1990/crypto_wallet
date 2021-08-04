module ApplicationHelper
  def date_br(date_us)
    date_us.strftime('%d/%m/%Y')
  end
<<<<<<< HEAD
=======

  # def ambiente_rails
  #   if Rails.env.development?
  #     'Desenvolvimento'
  #   elsif Rails.env.production?
  #     'Produção'
  #   else
  #     'Teste'
  #   end
  # end

  def locale
    I18n.locale == :en ? 'USA' : 'Portugues-BR' # if inline
  end
>>>>>>> e69b62d7def611ef52a17b19aabdb1dbd83ff011
end
