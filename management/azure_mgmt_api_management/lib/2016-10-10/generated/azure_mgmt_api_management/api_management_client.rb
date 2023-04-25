# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  #
  # A service client - single point of access to the REST API.
  #
  class ApiManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] Version of the API to be used with the client request.
    attr_reader :api_version

    # @return [String] Subscription credentials which uniquely identify
    # Microsoft Azure subscription. The subscription ID forms part of the URI
    # for every service call.
    attr_accessor :subscription_id

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [PolicySnippets] policy_snippets
    attr_reader :policy_snippets

    # @return [Regions] regions
    attr_reader :regions

    # @return [Apis] apis
    attr_reader :apis

    # @return [ApiOperations] api_operations
    attr_reader :api_operations

    # @return [ApiOperationsPolicy] api_operations_policy
    attr_reader :api_operations_policy

    # @return [ApiProducts] api_products
    attr_reader :api_products

    # @return [ApiPolicy] api_policy
    attr_reader :api_policy

    # @return [AuthorizationServers] authorization_servers
    attr_reader :authorization_servers

    # @return [Backends] backends
    attr_reader :backends

    # @return [Certificates] certificates
    attr_reader :certificates

    # @return [ApiManagementOperations] api_management_operations
    attr_reader :api_management_operations

    # @return [ApiManagementServices] api_management_services
    attr_reader :api_management_services

    # @return [Groups] groups
    attr_reader :groups

    # @return [GroupUsers] group_users
    attr_reader :group_users

    # @return [IdentityProviders] identity_providers
    attr_reader :identity_providers

    # @return [Loggers] loggers
    attr_reader :loggers

    # @return [NetworkStatus] network_status
    attr_reader :network_status

    # @return [OpenIdConnectProviders] open_id_connect_providers
    attr_reader :open_id_connect_providers

    # @return [Products] products
    attr_reader :products

    # @return [ProductApis] product_apis
    attr_reader :product_apis

    # @return [ProductGroups] product_groups
    attr_reader :product_groups

    # @return [ProductSubscriptions] product_subscriptions
    attr_reader :product_subscriptions

    # @return [ProductPolicy] product_policy
    attr_reader :product_policy

    # @return [Properties] properties
    attr_reader :properties

    # @return [Property] property
    attr_reader :property

    # @return [QuotaByCounterKeys] quota_by_counter_keys
    attr_reader :quota_by_counter_keys

    # @return [QuotaByPeriodKeys] quota_by_period_keys
    attr_reader :quota_by_period_keys

    # @return [Reports] reports
    attr_reader :reports

    # @return [Subscriptions] subscriptions
    attr_reader :subscriptions

    # @return [TenantAccess] tenant_access
    attr_reader :tenant_access

    # @return [TenantAccessGit] tenant_access_git
    attr_reader :tenant_access_git

    # @return [TenantConfiguration] tenant_configuration
    attr_reader :tenant_configuration

    # @return [TenantConfigurationSyncState] tenant_configuration_sync_state
    attr_reader :tenant_configuration_sync_state

    # @return [TenantPolicy] tenant_policy
    attr_reader :tenant_policy

    # @return [Users] users
    attr_reader :users

    # @return [UserGroups] user_groups
    attr_reader :user_groups

    # @return [UserSubscriptions] user_subscriptions
    attr_reader :user_subscriptions

    # @return [UserIdentities] user_identities
    attr_reader :user_identities

    # @return [ApiExport] api_export
    attr_reader :api_export

    #
    # Creates initializes a new instance of the ApiManagementClient class.
    # @param credentials [MsRest2::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest2::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @policy_snippets = PolicySnippets.new(self)
      @regions = Regions.new(self)
      @apis = Apis.new(self)
      @api_operations = ApiOperations.new(self)
      @api_operations_policy = ApiOperationsPolicy.new(self)
      @api_products = ApiProducts.new(self)
      @api_policy = ApiPolicy.new(self)
      @authorization_servers = AuthorizationServers.new(self)
      @backends = Backends.new(self)
      @certificates = Certificates.new(self)
      @api_management_operations = ApiManagementOperations.new(self)
      @api_management_services = ApiManagementServices.new(self)
      @groups = Groups.new(self)
      @group_users = GroupUsers.new(self)
      @identity_providers = IdentityProviders.new(self)
      @loggers = Loggers.new(self)
      @network_status = NetworkStatus.new(self)
      @open_id_connect_providers = OpenIdConnectProviders.new(self)
      @products = Products.new(self)
      @product_apis = ProductApis.new(self)
      @product_groups = ProductGroups.new(self)
      @product_subscriptions = ProductSubscriptions.new(self)
      @product_policy = ProductPolicy.new(self)
      @properties = Properties.new(self)
      @property = Property.new(self)
      @quota_by_counter_keys = QuotaByCounterKeys.new(self)
      @quota_by_period_keys = QuotaByPeriodKeys.new(self)
      @reports = Reports.new(self)
      @subscriptions = Subscriptions.new(self)
      @tenant_access = TenantAccess.new(self)
      @tenant_access_git = TenantAccessGit.new(self)
      @tenant_configuration = TenantConfiguration.new(self)
      @tenant_configuration_sync_state = TenantConfigurationSyncState.new(self)
      @tenant_policy = TenantPolicy.new(self)
      @users = Users.new(self)
      @user_groups = UserGroups.new(self)
      @user_subscriptions = UserSubscriptions.new(self)
      @user_identities = UserIdentities.new(self)
      @api_export = ApiExport.new(self)
      @api_version = '2016-10-10'
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
        sdk_information = 'azure_mgmt_api_management'
        sdk_information = "#{sdk_information}/0.19.1"
        add_user_agent_information(sdk_information)
    end
  end
end
