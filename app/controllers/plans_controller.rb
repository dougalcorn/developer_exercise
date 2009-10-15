class PlansController < ApplicationController
  resource_controller
  before_filter :load_buys

  private

  def collection
    @collection ||= Plan.all
  end

  def build_object
    @object ||= Plan.new(params[:plan])
  end

  def load_buys
    @buys = Buy.all
  end
end
