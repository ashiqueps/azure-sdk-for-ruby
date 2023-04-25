# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  #
  # REST API for Azure Logic Apps.
  #
  class IntegrationAccountAssemblies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the IntegrationAccountAssemblies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LogicManagementClient] reference to the LogicManagementClient
    attr_reader :client

    #
    # List the assemblies for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AssemblyCollection] operation results.
    #
    def list(resource_group_name, integration_account_name, custom_headers:nil)
      response = list_async(resource_group_name, integration_account_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List the assemblies for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, integration_account_name, custom_headers:nil)
      list_async(resource_group_name, integration_account_name, custom_headers:custom_headers).value!
    end

    #
    # List the assemblies for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, integration_account_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/assemblies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AssemblyDefinition] operation results.
    #
    def get(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      response = get_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      get_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:custom_headers).value!
    end

    #
    # Get an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'assembly_artifact_name is nil' if assembly_artifact_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/assemblies/{assemblyArtifactName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'assemblyArtifactName' => assembly_artifact_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyDefinition.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Create or update an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param assembly_artifact [AssemblyDefinition] The assembly artifact.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AssemblyDefinition] operation results.
    #
    def create_or_update(resource_group_name, integration_account_name, assembly_artifact_name, assembly_artifact, custom_headers:nil)
      response = create_or_update_async(resource_group_name, integration_account_name, assembly_artifact_name, assembly_artifact, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param assembly_artifact [AssemblyDefinition] The assembly artifact.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, integration_account_name, assembly_artifact_name, assembly_artifact, custom_headers:nil)
      create_or_update_async(resource_group_name, integration_account_name, assembly_artifact_name, assembly_artifact, custom_headers:custom_headers).value!
    end

    #
    # Create or update an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param assembly_artifact [AssemblyDefinition] The assembly artifact.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, integration_account_name, assembly_artifact_name, assembly_artifact, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'assembly_artifact_name is nil' if assembly_artifact_name.nil?
      fail ArgumentError, 'assembly_artifact is nil' if assembly_artifact.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyDefinition.mapper()
      request_content = @client.serialize(request_mapper,  assembly_artifact)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/assemblies/{assemblyArtifactName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'assemblyArtifactName' => assembly_artifact_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyDefinition.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyDefinition.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Delete an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      response = delete_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      delete_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:custom_headers).value!
    end

    #
    # Delete an assembly for an integration account.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'assembly_artifact_name is nil' if assembly_artifact_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/assemblies/{assemblyArtifactName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'assemblyArtifactName' => assembly_artifact_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get the content callback url for an integration account assembly.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkflowTriggerCallbackUrl] operation results.
    #
    def list_content_callback_url(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      response = list_content_callback_url_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the content callback url for an integration account assembly.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_content_callback_url_with_http_info(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      list_content_callback_url_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:custom_headers).value!
    end

    #
    # Get the content callback url for an integration account assembly.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param assembly_artifact_name [String] The assembly artifact name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_content_callback_url_async(resource_group_name, integration_account_name, assembly_artifact_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'assembly_artifact_name is nil' if assembly_artifact_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/assemblies/{assemblyArtifactName}/listContentCallbackUrl'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'assemblyArtifactName' => assembly_artifact_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerCallbackUrl.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest2::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
