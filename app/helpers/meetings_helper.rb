module MeetingsHelper
  def meeting_participants(meeting)
    if meeting.users.present?
      "participants: #{meeting.users.pluck(:username).join(",")}"
    else
      "They are no participants yet"
    end
  end
end
