class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
       project_backers = ProjectBacker.all.select { |backer| backer.project == self }
       project_backers.collect { |projback| projback.backer }
    end

end 