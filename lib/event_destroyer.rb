module DiscourseSimpleCalendar
  class EventDestroyer
    def self.destroy(op, post_number)
      details = op.custom_fields[DiscourseSimpleCalendar::CALENDAR_DETAILS_CUSTOM_FIELD] || {}
      details.delete(post_number)
      op.custom_fields[DiscourseSimpleCalendar::CALENDAR_DETAILS_CUSTOM_FIELD] = details
      op.save_custom_fields(true)
    end
  end
end
