class Age 

  class << self
    def format_converter(birth_date, format)
      case format
      when 'mm/dd/yy'
        b_date = birth_date.split(/[^\d]/)
        birth_date = b_date[1] + '/' + b_date[0] + '/' + b_date[2]
      else
        birth_date
      end
      return birth_date
    end
    
    def get_age_seconds(birth_date, format='dd/mm/yy')
      birth_date = format_converter(birth_date, format)
      DateTime.now.to_i - birth_date.to_datetime.to_i
    end

    def get_age_minutes(birth_date)
      get_age_seconds(birth_date)/60
    end

    def get_age_hours(birth_date)
      get_age_minutes(birth_date)/60
    end

    def get_age_days(birth_date)
      get_age_hours(birth_date)/24
    end

    def get_age_weeks(birth_date)
      get_age_days(birth_date)/7
    end

    def get_age_years(birth_date)
      get_age_days(birth_date)/365
    end
  end
  


end
