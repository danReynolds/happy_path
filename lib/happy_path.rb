module HappyPath
  PATHS = ['first', 'last']
  
  def setup_happy_path
    rescue_from ActiveRecord::RecordNotFound do |e|
      raise e unless controller_name.classify.constantize rescue nil && self.respond_to?(:happy_paths) && HappyPath::PATHS.include?(params[:id]) && !class_constant.count.zero?
      self.happy_paths(e, class_constant)
    end
  end

  def follow_happy_paths
    define_method (:happy_paths) do |exception, class_constant|
      redirect_to action: params[:action], id: class_constant.send(params[:id]).id
    end
  end
end
