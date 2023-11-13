class Timer

  def initialize
    @sec = 0
  end

  def seconds
    @sec
  end

  def seconds=(sec)
    @sec = sec
  end

  def time_string
    # if sec <= 59, return "00:00:#{sec}"
    # if sec > 59, -59 until sec is < 59; for every time it does -60, +1 to min
    # if min <= 59, return 00:#{min}:#{sec}
    # if min > 59, hour + 1 and min - 60 until min < 59 (while min > 59
    min = 0
    hour = 0
  
    
    # return seconds if it's less than 1 minute
    if min == 0 && @sec <= 59
      return "00:00:#{padded(@sec)}"
    end
    
    # increase by 1 minute and decrease by 60 seconds until less than 60 seconds remain
    while @sec > 59
      min += 1
      @sec -= 60
    end
   
    # return minutes and seconds if less than 1 hour
    if  hour == 0 && min <= 59
      return "00:#{padded(min)}:#{padded(@sec)}"
    end
    
    # increase by 1 hour and decrease by 60 minutes until less than 60 minutes remain
    while min > 59
      hour += 1
      min -= 60
    end
    
  
    return "#{padded(hour)}:#{padded(min)}:#{padded(@sec)}"
  end


  def padded(time)
    # if integer < 9, add 0 to front and return both
    # if integer > 9, return integer
    if time < 10
      return "0#{time}"
    else
      return time.to_s
    end
  end
end