module ApplicationHelper

  def bootstrap_class_for_flash(type)
    case type
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert alert-error"
      
    end

  end
  
end
