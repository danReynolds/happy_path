module HappyPath
  extend ActiveSupport::Concern
  PATHS = ['first', 'last']
  CONTROLLERS = []
  
  def setup_happy_path
    rescue_from ActiveRecord::RecordNotFound, with: :happy_paths if controller_name.classify.constantize
  end

  def follow_happy_paths
    define_method (:happy_paths) do |exception|
      class_constant = controller_name.classify.constantize
      raise exception unless self.respond_to?(:show) && HappyPath::PATHS.include?(params[:id]) && !class_constant.count.zero?
      redirect_to action: :show, id: class_constant.send(params[:id]).id
    end
  end
end
