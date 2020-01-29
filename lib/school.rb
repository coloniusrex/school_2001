class School
  def initialize(start_time_parameter, total_time_in_hours)
    @start_time = start_time_parameter
    @hours_in_school_day = total_time_in_hours
    @student_names = []
  end

  def start_time
      @start_time
  end

  def hours_in_school_day
    @hours_in_school_day
  end

  def student_names
    @student_names
  end


  # Iteration 2
  def add_student_name(new_name)
    @student_names << new_name
  end

  def end_time  #Seperate digits before colon, add hours_in_school_day, rejoin?
    start_hour, start_minute = @start_time.split(':').map(&:to_i)
  end_hour = start_hour + @hours_in_school_day
  end_minute = start_minute
  end_time = "#{end_hour}:00"
  end

  #Iteration 3
  def standard_student_names
    @student_names.each do |single_name|
      single_name.capitalize
    end
  end

  # def test_it_can_format_names
  #   school = School.new('9:00', 7)
  #
  #   school.add_student_name('Aurora')
  #   school.add_student_name('tim')
  #   school.add_student_name('megan')
  #
  #   assert_equal ["Aurora", "Tim", "Megan"], school.standard_student_names
  # end
end


#
# def test_it_can_calculate_end_time
#   skip
#   school1 = School.new('9:00', 7)
#   school2 = School.new('9:00', 3)
#
#   assert_equal '16:00', school1.end_time
#   assert_equal '12:00', school2.end_time
# end
