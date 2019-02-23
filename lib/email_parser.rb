# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser
  attr_accessor :email_string

  def initialize(emails)
    @email_string = emails
  end

  def end_symbol?(char)
    return (char == "," || char == " ")
  end

  def parse
    ret = []
    i = 0
    email = ""
    while i < self.email_string.length
      # puts (self.email_string[i])
      if (end_symbol?(self.email_string[i]))
        puts email
        ret << email
        email = ""
      end
      while (end_symbol?(self.email_string[i]))
        i += 1
      end
      email << email_string[i]
      i += 1
      if (i >= self.email_string.length)
        ret << email
      end
    end
    puts ("Ret: #{ret}")
    ret.uniq!
    puts ("URet: #{ret}")
    return ret
  end
end
