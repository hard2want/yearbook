require 'open-uri'

class StudentController < ApplicationController

# def student_data

#   @students = []
#       list_from_api.each do |stud|
#         student = Student.new #name, photo_url, section, twitter, email
#         student.name = "#{stud["first_name"]} #{stud["last_name"]}"
#         student.photo_url = stud["avatar"]
#         student.section = result["name"]
#         student.twitter = stud["twitter"]
#         student.email = stud["email"]

#         @students << student
#         # return @students
#       end
# end

  def amdev
    class_code = 36
    url = "http://yearbook-api.herokuapp.com/2013/Spring/#{class_code}.json"
    result = JSON.parse(open(url).read)
    list_from_api = result["students"]

    # list_from_api.student_data

  @students = []

      list_from_api.each do |stud|
        student = Student.new #name, photo_url, section, twitter, email
        student.name = "#{stud["first_name"]} #{stud["last_name"]}"
        student.photo_url = stud["avatar"]
        student.section = result["name"]
        student.twitter = stud["twitter"]
        student.email = stud["email"]

        @students << student


      end
  end


  def pmdev
    class_code = 37
    url = "http://yearbook-api.herokuapp.com/2013/Spring/#{class_code}.json"
    result = JSON.parse(open(url).read)
    list_from_api = result["students"]


  @students = []

      list_from_api.each do |stud|
        student = Student.new #name, photo_url, section, twitter, email
        student.name = "#{stud["first_name"]} #{stud["last_name"]}"
        student.photo_url = stud["avatar"]
        student.section = result["name"]
        student.twitter = stud["twitter"]
        student.email = stud["email"]

        @students << student
      end
  end

end
  # def output
  #     puts "<li><img src='#{@photo_url}'>"
  #     puts "#{@name}<br>"
  #     # puts "#{@email}"
  #       if @twitter !=""
  #       puts "@<a href=http://www.twitter.com/#{@twitter}>#{@twitter}</a></li>"
  #       end
  #     # puts "#{@section}"
  # end

