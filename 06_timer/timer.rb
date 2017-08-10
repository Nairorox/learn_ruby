class Timer
attr_accessor :seconds, :minutes, :hours
  def initialize
    @seconds = 0
  end

  def time_string

  if @seconds > 86399
    multiplier = @seconds/86400
    @seconds = @seconds - (multiplier*86400)
  end

@secondss = (@seconds%60).to_s
if (@seconds%60) < 10
  @secondss = "0" + @secondss
    end
    @minutes = (@seconds/60)
    @minutess = (@minutes%60).to_s
    if @minutess.to_i < 10
      @minutess =  "0" + (@minutes%60).to_s
    end
    @hours = @minutes/60
    @hourss = (@minutes/60).to_s
    if @hours < 10
      @hourss =  "0" + @hours.to_s
    end


    returned_time = @hourss + ":" + @minutess + ":" + @secondss

  end

end
