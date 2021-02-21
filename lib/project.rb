require 'pry'

class Project
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer = []
        ProjectBacker.all.select do |projectbacker| 
            if projectbacker.project == self
            backer << projectbacker.backer
            end
        end
        backer
    end
        
    

end