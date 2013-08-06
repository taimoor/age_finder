Rails.application.routes.draw do

  mount AgeFinder::Engine => "/age_finder"
end
