module MeetingsHelper
  def meeting_participants(meeting)
    if meeting.users.present?
      "#{pluralize(meeting.users.count,'participant')} : #{meeting.users.pluck(:username).join(",")}"
    else
      "They are no participants yet"
    end
  end

  def meeting_tag(meeting)
    if meeting.creator == current_user
      "you have created this meeting"
    elsif meeting.users.include?(current_user)
      "you have been tag to participate to the meeting"
    else
      ""
    end
  end
end
