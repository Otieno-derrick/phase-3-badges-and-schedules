# Write your code here.
def badge_maker (name)
 "Hello, my name is #{name}."
end



def batch_badge_creator present
  present.map do |attendee|
    "Hello, my name is #{attendee}."
  end
end



def assign_rooms present
  present.map.with_index(1) do |attendee, room_no|
    "Hello, #{attendee}! You'll be assigned to room #{room_no}!"
  end
end


def printer present
  batch_badge_creator(present).each do |badge|
    puts badge
  end
   assign_rooms(present).each do |room_assigned|
    puts room_assigned
    end
end