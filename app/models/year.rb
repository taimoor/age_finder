class Year 
  include ActiveModel::Validations

  class << self
    def is_leap?(year)
      Date.leap?( year )
    end

    def leap_years_in_range( start_year , end_year = DateTime.now.year )
      start_year, end_year = start_year.to_i, end_year.to_i
      leap_years = (start_year..end_year).select { |year| Year.is_leap?(year) }
    end
  end
end