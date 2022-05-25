# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: authzed/api/v0/acl_service.proto

require 'google/protobuf'

require 'validate/validate_pb'
require 'authzed/api/v0/core_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("authzed/api/v0/acl_service.proto", :syntax => :proto3) do
    add_message "authzed.api.v0.RelationTupleFilter" do
      optional :namespace, :string, 1, json_name: "namespace"
      optional :object_id, :string, 2, json_name: "objectId"
      optional :relation, :string, 3, json_name: "relation"
      optional :userset, :message, 5, "authzed.api.v0.ObjectAndRelation", json_name: "userset"
      repeated :filters, :enum, 6, "authzed.api.v0.RelationTupleFilter.Filter", json_name: "filters"
    end
    add_enum "authzed.api.v0.RelationTupleFilter.Filter" do
      value :UNKNOWN, 0
      value :OBJECT_ID, 1
      value :RELATION, 2
      value :USERSET, 4
    end
    add_message "authzed.api.v0.ReadRequest" do
      repeated :tuplesets, :message, 1, "authzed.api.v0.RelationTupleFilter", json_name: "tuplesets"
      optional :at_revision, :message, 2, "authzed.api.v0.Zookie", json_name: "atRevision"
    end
    add_message "authzed.api.v0.ReadResponse" do
      repeated :tuplesets, :message, 1, "authzed.api.v0.ReadResponse.Tupleset", json_name: "tuplesets"
      optional :revision, :message, 2, "authzed.api.v0.Zookie", json_name: "revision"
    end
    add_message "authzed.api.v0.ReadResponse.Tupleset" do
      repeated :tuples, :message, 1, "authzed.api.v0.RelationTuple", json_name: "tuples"
    end
    add_message "authzed.api.v0.WriteRequest" do
      repeated :write_conditions, :message, 1, "authzed.api.v0.RelationTuple", json_name: "writeConditions"
      repeated :updates, :message, 2, "authzed.api.v0.RelationTupleUpdate", json_name: "updates"
    end
    add_message "authzed.api.v0.WriteResponse" do
      optional :revision, :message, 1, "authzed.api.v0.Zookie", json_name: "revision"
    end
    add_message "authzed.api.v0.CheckRequest" do
      optional :test_userset, :message, 1, "authzed.api.v0.ObjectAndRelation", json_name: "testUserset"
      optional :user, :message, 2, "authzed.api.v0.User", json_name: "user"
      optional :at_revision, :message, 3, "authzed.api.v0.Zookie", json_name: "atRevision"
    end
    add_message "authzed.api.v0.ContentChangeCheckRequest" do
      optional :test_userset, :message, 1, "authzed.api.v0.ObjectAndRelation", json_name: "testUserset"
      optional :user, :message, 2, "authzed.api.v0.User", json_name: "user"
    end
    add_message "authzed.api.v0.CheckResponse" do
      optional :is_member, :bool, 1, json_name: "isMember"
      optional :revision, :message, 2, "authzed.api.v0.Zookie", json_name: "revision"
      optional :membership, :enum, 3, "authzed.api.v0.CheckResponse.Membership", json_name: "membership"
    end
    add_enum "authzed.api.v0.CheckResponse.Membership" do
      value :UNKNOWN, 0
      value :NOT_MEMBER, 1
      value :MEMBER, 2
    end
    add_message "authzed.api.v0.ExpandRequest" do
      optional :userset, :message, 1, "authzed.api.v0.ObjectAndRelation", json_name: "userset"
      optional :at_revision, :message, 2, "authzed.api.v0.Zookie", json_name: "atRevision"
    end
    add_message "authzed.api.v0.ExpandResponse" do
      optional :tree_node, :message, 1, "authzed.api.v0.RelationTupleTreeNode", json_name: "treeNode"
      optional :revision, :message, 3, "authzed.api.v0.Zookie", json_name: "revision"
    end
    add_message "authzed.api.v0.LookupRequest" do
      optional :object_relation, :message, 1, "authzed.api.v0.RelationReference", json_name: "objectRelation"
      optional :user, :message, 2, "authzed.api.v0.ObjectAndRelation", json_name: "user"
      optional :at_revision, :message, 3, "authzed.api.v0.Zookie", json_name: "atRevision"
      optional :page_reference, :string, 4, json_name: "pageReference"
      optional :limit, :uint32, 5, json_name: "limit"
    end
    add_message "authzed.api.v0.LookupResponse" do
      repeated :resolved_object_ids, :string, 1, json_name: "resolvedObjectIds"
      optional :next_page_reference, :string, 2, json_name: "nextPageReference"
      optional :revision, :message, 3, "authzed.api.v0.Zookie", json_name: "revision"
    end
  end
end

module Authzed
  module Api
    module V0
      RelationTupleFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.RelationTupleFilter").msgclass
      RelationTupleFilter::Filter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.RelationTupleFilter.Filter").enummodule
      ReadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.ReadRequest").msgclass
      ReadResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.ReadResponse").msgclass
      ReadResponse::Tupleset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.ReadResponse.Tupleset").msgclass
      WriteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.WriteRequest").msgclass
      WriteResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.WriteResponse").msgclass
      CheckRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.CheckRequest").msgclass
      ContentChangeCheckRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.ContentChangeCheckRequest").msgclass
      CheckResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.CheckResponse").msgclass
      CheckResponse::Membership = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.CheckResponse.Membership").enummodule
      ExpandRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.ExpandRequest").msgclass
      ExpandResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.ExpandResponse").msgclass
      LookupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.LookupRequest").msgclass
      LookupResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("authzed.api.v0.LookupResponse").msgclass
    end
  end
end
