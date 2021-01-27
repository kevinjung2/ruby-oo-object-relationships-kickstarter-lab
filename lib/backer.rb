class Backer
  attr_accessor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def back_project(title)
    ProjectBacker.new(title, self)
  end

  def backed_projects
    ProjectBacker.all.select { |proj| proj.backer == self}.collect { |proj| proj.project }
  end
end
