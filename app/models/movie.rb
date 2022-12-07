class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(release_date)
        Movie.where(release_date: release_date)
    end

    def self.create_with_title(title)
        Movie.create(title: title)
    end 

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(attribute)
        self.find_by(attribute)
    end

    def self.find_movies_after_2002
        self.all.where("release_date > 2002")
    end

    def self.latest_year
        self.all.max_by { |movie| movie.release_date}
    end

    def update_with_attributes(attribute)
        self.update(attribute)
    end

    def self.update_all_titles(title)
        Movie.update(title)
    end

    def self.delete_by_id(id)
        self.delete(id)
    end

    def self.delete_all_movies
        self.destroy_all
    end
end
