class CoursesController < ApplicationController
  def index

    #@list_of_courses = Course.all.order({ :created_at => :desc })
    render({ :template => "courses/index.html.erb" })
  end

  def show

    the_id = params.fetch("path_id")
    matching_courses = Course.where({ :id => the_id })
    @course = matching_courses[0]
    render({ :template => "courses/show.html.erb" })
  end
end
