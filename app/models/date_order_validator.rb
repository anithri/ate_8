class DateOrderValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value && record.start_at? && (value >= record.start_at)
      record.errors[:end_at] << 'End must be later than start'
    end
  end
end
