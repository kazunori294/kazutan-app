class HostsController < ApplicationController
  def show
	@hosts = Host.all
  end

  def detail
	@host = Host.find(params[:id])
  end

  def edit
        @host = Host.find(params[:id])
  end

  def new
	@host = Host.new
  end

  def destroy
        @host = Host.find(params[:id])
        @host.destroy
        redirect_to :action => 'show'
  end


  def create
    @host = Host.new
    @host.hostname = params[:host][:hostname]
    @host.hostclass = params[:host][:hostclass]
    @host.os = params[:host][:os]
    @host.cpu_num = params[:host][:cpu_num]
    @host.cpu_model = params[:host][:cpu_model]
    @host.memory = params[:host][:memory]
    @host.ipaddress = params[:host][:ipaddress]
    @host.subnet = params[:host][:subnet]
    @host.save
    redirect_to :action => 'show'
  end

  def update
    @host = Host.find(params[:host][:id])
    @host.hostname = params[:host][:hostname]
    @host.hostclass = params[:host][:hostclass]
    @host.os = params[:host][:os]
    @host.cpu_num = params[:host][:cpu_num]
    @host.cpu_model = params[:host][:cpu_model]
    @host.memory = params[:host][:memory]
    @host.ipaddress = params[:host][:ipaddress]
    @host.subnet = params[:host][:subnet]
    @host.save
    redirect_to :action => 'detail', id: params[:host][:id]
  end

  def searchHostclass
    @hosts = Host.where(hostclass: params[:hostclass])
    render "hosts/show"
  end


end
