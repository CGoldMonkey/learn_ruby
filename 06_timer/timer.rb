class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remaing_seconds = @seconds - (hours * 3600)
    minutes = remaing_seconds/60
    remaing_seconds = remaing_seconds - (minutes * 60)
    second = remaing_seconds%60

    string = "%02d:%02d:%02d"% [hours, minutes, second]
    return string
  end
end

=begin
Old code from before I redid the problem
class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/60/60
    remaing_seconds = @seconds-(hours*60*60)
    minutes = remaing_seconds/60
    remaing_seconds = remaing_seconds-(minutes*60)

    hours_string = hours.to_s
    minutes_string = minutes.to_s
    seconds_string = remaing_seconds.to_s

    if hours_string.length == 1
      time = '0'<<(hours_string+':')
    else
      time = hours_string<<':'
    end

    if minutes_string.length == 1
      time<<('0'+minutes_string+':')
    else
      time<<(minutes_string+':')
    end

    if seconds_string.length == 1
      time<<('0'+seconds_string)
    else
      time<<seconds_string
    end

    return time
  end
end



=end