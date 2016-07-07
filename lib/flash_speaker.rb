module FlashSpeaker
  def attach_message(success_flag, entity_errors = nil, t_params = {})
    flash_type = success_flag ? :success : :failed
    flash[:errors] = entity_errors if entity_errors.present?
    flash[flash_type] = message(flash_type, t_params)
  end

  private

  def message(flash_type, t_params = {})
    case
    when message_exists?(message_path(flash_type))
      t message_path(flash_type), t_params
    when message_exists?(default_message_path(flash_type))
      msg = t default_message_path(flash_type), t_params
      msg.sub('<entity>', entity_name)
    else
      raise "translation missing: #{message_path(flash_type)}"
    end
  end

  def message_path(flash_type)
    "#{controller_name}.actions.#{action_name}.#{flash_type}"
  end

  def default_message_path(flash_type)
    "default.actions.#{action_name}.#{flash_type}"
  end

  def entity_name
    t "#{controller_name}.entity"
  end

  def message_exists?(path)
    I18n.t path, raise: true
  rescue
    false
  end
end
