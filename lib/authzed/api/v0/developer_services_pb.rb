# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: authzed/api/v0/developer.proto for package 'authzed.api.v0'

require 'grpc'
require 'authzed/api/v0/developer_pb'

module Authzed
  module Api
    module V0
      module DeveloperService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'authzed.api.v0.DeveloperService'

          rpc :EditCheck, ::Authzed::Api::V0::EditCheckRequest, ::Authzed::Api::V0::EditCheckResponse
          rpc :Validate, ::Authzed::Api::V0::ValidateRequest, ::Authzed::Api::V0::ValidateResponse
          rpc :Share, ::Authzed::Api::V0::ShareRequest, ::Authzed::Api::V0::ShareResponse
          rpc :LookupShared, ::Authzed::Api::V0::LookupShareRequest, ::Authzed::Api::V0::LookupShareResponse
          rpc :UpgradeSchema, ::Authzed::Api::V0::UpgradeSchemaRequest, ::Authzed::Api::V0::UpgradeSchemaResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
