require 'fog/core/collection'

module Fog
  class Collection
    def all(options = {})
      data = service.get_records model.provider_class
      load(data)
    end

    def get(ref)
      data = service.get_record(ref, model.provider_class)
      new(data)
    rescue Fog::XenServer::NotFound
      nil
    end

    def get_by_name(name)
      ref = service.get_by_name(name, model.provider_class)
      return nil if ref.nil?
      get(ref)
    rescue Fog::XenServer::NotFound
      nil
    end

    alias_method :find_by_name, :get_by_name

    def get_by_uuid(uuid)
      ref = service.get_by_uuid(uuid, model.provider_class)
      return nil if ref.nil?
      get(ref)
    rescue Fog::XenServer::NotFound
      nil
    end

    alias_method :find_by_uuid, :get_by_uuid
  end
end