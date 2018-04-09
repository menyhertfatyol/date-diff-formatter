require 'time'

class DateDiffFormatter
  def self.format(earlier, later = omitted = Time.now)
    begin
      earlier = Time.parse(earlier)
      later = Time.parse(later) unless omitted
      difference = (later - earlier).round

      case
        when difference < 60 then "#{difference} seconds"
        when difference >= 60 && difference < 3600 then "#{difference/60} minutes"
        when difference >= 3600 && difference < 86_400 then "#{difference/60/60} hours"
        when difference >= 86_400 && difference < 30_585_600 then "#{difference/60/60/24} days"
        when difference >= 30_585_600 then "#{difference/60/60/24/365} years"
      end

    rescue => e
      nil
    end

  end
end
