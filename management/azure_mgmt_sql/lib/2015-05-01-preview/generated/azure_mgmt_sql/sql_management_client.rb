# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  #
  # A service client - single point of access to the REST API.
  #
  class SqlManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription ID that identifies an Azure
    # subscription.
    attr_accessor :subscription_id

    # @return [String] The API version to use for the request.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [DatabaseAdvisors] database_advisors
    attr_reader :database_advisors

    # @return [DatabaseRecommendedActions] database_recommended_actions
    attr_reader :database_recommended_actions

    # @return [ServerAdvisors] server_advisors
    attr_reader :server_advisors

    # @return [DatabaseBlobAuditingPolicies] database_blob_auditing_policies
    attr_reader :database_blob_auditing_policies

    # @return [DatabaseAutomaticTuningOperations]
    # database_automatic_tuning_operations
    attr_reader :database_automatic_tuning_operations

    # @return [EncryptionProtectors] encryption_protectors
    attr_reader :encryption_protectors

    # @return [FailoverGroups] failover_groups
    attr_reader :failover_groups

    # @return [FirewallRules] firewall_rules
    attr_reader :firewall_rules

    # @return [ManagedInstances] managed_instances
    attr_reader :managed_instances

    # @return [Operations] operations
    attr_reader :operations

    # @return [ServerKeys] server_keys
    attr_reader :server_keys

    # @return [Servers] servers
    attr_reader :servers

    # @return [SyncAgents] sync_agents
    attr_reader :sync_agents

    # @return [SyncGroups] sync_groups
    attr_reader :sync_groups

    # @return [SyncMembers] sync_members
    attr_reader :sync_members

    # @return [SubscriptionUsages] subscription_usages
    attr_reader :subscription_usages

    # @return [VirtualClusters] virtual_clusters
    attr_reader :virtual_clusters

    # @return [VirtualNetworkRules] virtual_network_rules
    attr_reader :virtual_network_rules

    #
    # Creates initializes a new instance of the SqlManagementClient class.
    # @param credentials [MsRest2::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest2::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @database_advisors = DatabaseAdvisors.new(self)
      @database_recommended_actions = DatabaseRecommendedActions.new(self)
      @server_advisors = ServerAdvisors.new(self)
      @database_blob_auditing_policies = DatabaseBlobAuditingPolicies.new(self)
      @database_automatic_tuning_operations = DatabaseAutomaticTuningOperations.new(self)
      @encryption_protectors = EncryptionProtectors.new(self)
      @failover_groups = FailoverGroups.new(self)
      @firewall_rules = FirewallRules.new(self)
      @managed_instances = ManagedInstances.new(self)
      @operations = Operations.new(self)
      @server_keys = ServerKeys.new(self)
      @servers = Servers.new(self)
      @sync_agents = SyncAgents.new(self)
      @sync_groups = SyncGroups.new(self)
      @sync_members = SyncMembers.new(self)
      @subscription_usages = SubscriptionUsages.new(self)
      @virtual_clusters = VirtualClusters.new(self)
      @virtual_network_rules = VirtualNetworkRules.new(self)
      @api_version = '2015-05-01-preview'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_sql'
        sdk_information = "#{sdk_information}/0.19.1"
        add_user_agent_information(sdk_information)
    end
  end
end
