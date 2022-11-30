class Movie < ActiveRecord::Base

    def self.create_with_title title
        self.create(title: title)
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id id
        self.find(id)
        # Why does Movie.find(id) work but not Movie.find(id: id) Same as below.. I'm confused because as we were CREATING a movie we used (title: title) but this did work.  Is it because 
    end

    def self.find_movie_with_attributes attrs 
        self.find_by(attrs)
    end

    def self.find_movies_after_2002
        where( "release_date > 2002")
    end

    def  update_with_attributes attrs
        update(attrs)
    end
    
    def self.update_all_titles title
        all.update(title: title)
        #??? I'm trying to grab all the movies. Movie.all shows all movies. Let's continue left to right. Movie.all.update(title: "titlezz") does in fact change all titles in pry to titlezz. So why doesn't self work here? Because this is a CLASS method Trey.. Duh. Read buddy!
    end

        def self.delete_by_id id
            destroy(id)
        end

        def self.delete_all_movies
            destroy_all
        end

    end