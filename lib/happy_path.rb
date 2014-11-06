require "happy_path/version"

module HappyPath
  extend ActiveSupport::Concern

  def setup_happy_path
    rescue_from ActiveRecord::RecordNotFound, with: :happy_paths
  end

  module ClassMethods
    def happy_paths(exception)
      class_constant = controller_name.classify.constantize
      raise exception unless ["first","last"].include?(params[:id]) || class_constant.count.zero?
      redirect_to action: :show, id: class_constant.send(params[:id]).id
    end
  end
end
