class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
        @start_date = Time.parse(start_date_to_save)
        @duration = duration_to_save #in minutes
        @title = title_to_save
        @attendees = attendees_to_save
    end

    def postpone_24h
        postponed_date = @start_date + (24 * 60 * 60)
    end

    def end_date
        end_of_event = @start_date + (@duration * 60)
    end

    def is_past?
        Time.now > @start_date
    end

    def is_future?
        Time.now < @start_date # can also use !my_event.is_past? in console for the inverse
    end
    
    def is_soon?
        (Time.now - @start_date) < (30 * 60) # if it's soon in less than 30 mins
    end

    def to_s 
        puts ">Title : #{@title}"
        puts ">Start date : #{start_date.strftime('%Y-%m-%d %H:%M')}" # to get rid of the '+0100' ending
        puts ">Duration : #{duration} minutes"
        puts ">Attendees : #{attendees.join(", ")}"
    end

end