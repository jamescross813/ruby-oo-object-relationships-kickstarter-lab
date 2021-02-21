require 'pry'

class Backer

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        #binding.pry
        backed = []
        ProjectBacker.all.select do |projectbacker| 
            if projectbacker.backer == self
            backed << projectbacker.project
            end
        end
        backed
    end

   
end