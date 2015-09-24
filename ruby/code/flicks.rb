class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end
	def to_s
		@movies.size.to_s
	end	
end
movie1 = Movie.new('NinjaTurtles', 4)
movie2 = Movie.new('45 years',8)
movie3 = Movie.new('8 mm',10)
pl = Playlist.new("Horror")
pl.add_movie(movie1)
puts pl


class Movie
	attr_accessor :title
	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end
	def thumbs_up
 		@rank += 1
	end	
	def thumbs_down
		@rank -= 1
	end	
	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end
end
