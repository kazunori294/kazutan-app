module Api
  class HostsController < ApplicationController

    def index
      @hosts = Host.all
      render json: @hosts
    end

    def show
      @host = Host.find(params[:id])
      render json: @host
    end

    def updateIpaddress
      if Host.exists?(:ipaddress => params[:ip])
         render :text => "exist"
      else
         @host = Host.new
         @host.ipaddress = params[:ip]
         @host.save
         render :text => "added"
      end
    end

    def updateHostname
      @host = Host.where(ipaddress: params[:ip]).first
      @host.hostname = params[:new]
      @host.save
       render :text => "updated"
    end

    def updateHostclass
      @host = Host.where(ipaddress: params[:ip]).first
      @host.hostclass = params[:new]
      @host.save
       render :text => "updated"
    end

    def updateOs
      @host = Host.where(ipaddress: params[:ip]).first
      @host.os = params[:new]
      @host.save
       render :text => "updated"
    end

    def updateCpu_num
      @host = Host.where(ipaddress: params[:ip]).first
      @host.cpu_num = params[:new]
      @host.save
       render :text => "updated"
    end

    def updateCpu_model
      @host = Host.where(ipaddress: params[:ip]).first
      @host.cpu_model = params[:new]
      @host.save
       render :text => "updated"
    end

    def updateMemory
      @host = Host.where(ipaddress: params[:ip]).first
      @host.memory = params[:new]
      @host.save
       render :text => "updated"
    end

    def updateSubnet
      @host = Host.where(ipaddress: params[:ip]).first
      @host.subnet = params[:new]
      @host.save
       render :text => "updated"
    end


  end
end
