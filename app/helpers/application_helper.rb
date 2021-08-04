module ApplicationHelper
    def date_br(date_us)
        date_us.strftime("%d/%m/%Y")
    end    

    def locale(locale)
      I18n.locale == :en ? 'U.S.A' : 'Português/BR'
    end
end
