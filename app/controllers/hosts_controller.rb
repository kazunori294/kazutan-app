class HostsController < ApplicationController
  def show
	@hosts = Host.all
  end

  def detail
	@host = Host.find(params[:id])
  end


end
