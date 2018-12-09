module InteractorValidations
  extend ::ActiveSupport::Concern

  included do
    include ::ActiveModel::Validations

    before do
      unless self.valid?
        self.context.fail!(error: self.errors.full_messages.to_sentence)
      end
    end

    def read_attribute_for_validation(key)
      self.context.send(key.to_sym)
    end
  end
end
