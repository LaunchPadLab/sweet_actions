class ShowAction < SweetActions::ShowAction
  def set_resource
    resource_class.find(params[:id])
  end

  def authorized?
    # can?(:read, resource)
    false
  end
end