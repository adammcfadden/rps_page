class String
  define_method(:beats?) do |arg|

    down_self = self.downcase()
    down_arg = arg.downcase()

    if down_self == 'rock'
      if down_arg == "scissors"
        return true
      elsif down_arg == "paper"
        return false
      end
    end

    if down_self == 'paper'
      if down_arg == "rock"
        return true
      elsif down_arg == "scissors"
        return false
      end
    end

    if down_self == 'scissors'
      if down_arg == "paper"
        return true
      elsif down_arg == "rock"
        return false
      end
    end

    return nil

  end
end
