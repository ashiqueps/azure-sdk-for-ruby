# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  #
  # AzureAccounts
  #
  class AzureAccounts
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AzureAccounts class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LuisAuthoringClient] reference to the LuisAuthoringClient
    attr_reader :client

    #
    # apps - Assign a LUIS Azure account to an application
    #
    # Assigns an Azure account to the application.
    #
    # @param app_id The application ID.
    # @param azure_account_info_object [AzureAccountInfoObject] The Azure account
    # information object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def assign_to_app(app_id, azure_account_info_object:nil, custom_headers:nil)
      response = assign_to_app_async(app_id, azure_account_info_object:azure_account_info_object, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # apps - Assign a LUIS Azure account to an application
    #
    # Assigns an Azure account to the application.
    #
    # @param app_id The application ID.
    # @param azure_account_info_object [AzureAccountInfoObject] The Azure account
    # information object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def assign_to_app_with_http_info(app_id, azure_account_info_object:nil, custom_headers:nil)
      assign_to_app_async(app_id, azure_account_info_object:azure_account_info_object, custom_headers:custom_headers).value!
    end

    #
    # apps - Assign a LUIS Azure account to an application
    #
    # Assigns an Azure account to the application.
    #
    # @param app_id The application ID.
    # @param azure_account_info_object [AzureAccountInfoObject] The Azure account
    # information object.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def assign_to_app_async(app_id, azure_account_info_object:nil, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AzureAccountInfoObject.mapper()
      request_content = @client.serialize(request_mapper,  azure_account_info_object)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'apps/{appId}/azureaccounts'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatus.mapper()
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
    # apps - Get LUIS Azure accounts assigned to the application
    #
    # Gets the LUIS Azure accounts assigned to the application for the user using
    # his ARM token.
    #
    # @param app_id The application ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def get_assigned(app_id, custom_headers:nil)
      response = get_assigned_async(app_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # apps - Get LUIS Azure accounts assigned to the application
    #
    # Gets the LUIS Azure accounts assigned to the application for the user using
    # his ARM token.
    #
    # @param app_id The application ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_assigned_with_http_info(app_id, custom_headers:nil)
      get_assigned_async(app_id, custom_headers:custom_headers).value!
    end

    #
    # apps - Get LUIS Azure accounts assigned to the application
    #
    # Gets the LUIS Azure accounts assigned to the application for the user using
    # his ARM token.
    #
    # @param app_id The application ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_assigned_async(app_id, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'apps/{appId}/azureaccounts'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id},
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'AzureAccountInfoObjectElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'AzureAccountInfoObject'
                    }
                }
              }
            }
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
    # apps - Removes an assigned LUIS Azure account from an application
    #
    # Removes assigned Azure account from the application.
    #
    # @param app_id The application ID.
    # @param azure_account_info_object [AzureAccountInfoObject] The Azure account
    # information object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def remove_from_app(app_id, azure_account_info_object:nil, custom_headers:nil)
      response = remove_from_app_async(app_id, azure_account_info_object:azure_account_info_object, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # apps - Removes an assigned LUIS Azure account from an application
    #
    # Removes assigned Azure account from the application.
    #
    # @param app_id The application ID.
    # @param azure_account_info_object [AzureAccountInfoObject] The Azure account
    # information object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def remove_from_app_with_http_info(app_id, azure_account_info_object:nil, custom_headers:nil)
      remove_from_app_async(app_id, azure_account_info_object:azure_account_info_object, custom_headers:custom_headers).value!
    end

    #
    # apps - Removes an assigned LUIS Azure account from an application
    #
    # Removes assigned Azure account from the application.
    #
    # @param app_id The application ID.
    # @param azure_account_info_object [AzureAccountInfoObject] The Azure account
    # information object.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def remove_from_app_async(app_id, azure_account_info_object:nil, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::AzureAccountInfoObject.mapper()
      request_content = @client.serialize(request_mapper,  azure_account_info_object)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'apps/{appId}/azureaccounts'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatus.mapper()
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
    # user - Get LUIS Azure accounts
    #
    # Gets the LUIS Azure accounts for the user using his ARM token.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_user_luisaccounts(custom_headers:nil)
      response = list_user_luisaccounts_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # user - Get LUIS Azure accounts
    #
    # Gets the LUIS Azure accounts for the user using his ARM token.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_user_luisaccounts_with_http_info(custom_headers:nil)
      list_user_luisaccounts_async(custom_headers:custom_headers).value!
    end

    #
    # user - Get LUIS Azure accounts
    #
    # Gets the LUIS Azure accounts for the user using his ARM token.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_user_luisaccounts_async(custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'azureaccounts'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
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
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'AzureAccountInfoObjectElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'AzureAccountInfoObject'
                    }
                }
              }
            }
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
