class Project
  attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    ProjectBacker.all.select { |proj| proj.project == self}.collect { |proj| proj.backer}
  end
end
