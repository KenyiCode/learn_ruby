class Timer
  #write your code here
  attr_accessor :Seconds, :Minutes, :Hours
  def initialize
    @Seconds = 0
    @Minutes = 0
    @Hours = 0
  end

  def seconds
    @Seconds
  end

  def seconds= (secs)
    @Seconds = secs
  end

  def time_string
    hrs = 0
    mins = 0
    secs = @Seconds.to_i

    if (secs > 60)
      mins = secs / 60
      secs = secs % 60
    end
    if (mins > 60)
      hrs = mins / 60
      mins = mins % 60
    end

    if (secs == 0)
      @Seconds = "00"

    elsif (secs > 0 and 
      secs < 10)
      @Seconds = "0" + secs.to_s
    else
      @Seconds = secs.to_s 
    end

    if (mins == 0)
      @Minutes = "00"
  
    elsif (mins > 0 and
      mins < 10)
      @Minutes = "0" + mins.to_s
    else
      @Minutes = mins.to_s
    end

    if (hrs == 0)
      @Hours = "00"

    elsif (hrs > 0 and 
      hrs < 10)
      @Hours = "0" + hrs.to_s
    else
      @Hours = hrs.to_s
    end


    returnStr = @Hours.to_s + ":" + @Minutes.to_s + ":" + @Seconds.to_s
    returnStr
  end
end