module ComponentsHelper

  def display_size(component)
    "#{component.height_in}h x #{component.width_in}w"
  end

  def display_component(component)
    "#{display_name(component)} (#{display_manufacturer(component)})".html_safe
  end

  private
  def display_name(component)
    link_to component, component_path(component)
  end

  def display_manufacturer(component)
     link_to component.manufacturer, manufacturer_path(component.manufacturer)
  end
end
