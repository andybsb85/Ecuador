module ApplicationHelper
 
  def stars(place)
  (place.rating_av.to_f).round
  end

def rating_display(place)
  if stars(place) == 0
  render "no_stars"
  elsif stars(place) == 1
  render "one_star"
  elsif stars(place) == 2
  render "two_stars"
  elsif stars(place) == 3
  render "three_stars"
  elsif stars(place) == 4
  render "four_stars"
  else stars(place) == 5
  render "five_stars"
  end
  end
end
