# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  #
  # HDInsight Management Client
  #
  class VirtualMachines
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VirtualMachines class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [HDInsightManagementClient] reference to the HDInsightManagementClient
    attr_reader :client

    #
    # Lists the HDInsight clusters hosts
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_hosts(resource_group_name, cluster_name, custom_headers:nil)
      response = list_hosts_async(resource_group_name, cluster_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the HDInsight clusters hosts
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_hosts_with_http_info(resource_group_name, cluster_name, custom_headers:nil)
      list_hosts_async(resource_group_name, cluster_name, custom_headers:custom_headers).value!
    end

    #
    # Lists the HDInsight clusters hosts
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_hosts_async(resource_group_name, cluster_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/listHosts'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name},
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
                    serialized_name: 'HostInfoElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'HostInfo'
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
    # Restarts the specified HDInsight cluster hosts.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param hosts [Array<String>] The list of hosts to restart
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def restart_hosts(resource_group_name, cluster_name, hosts, custom_headers:nil)
      response = restart_hosts_async(resource_group_name, cluster_name, hosts, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param hosts [Array<String>] The list of hosts to restart
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def restart_hosts_async(resource_group_name, cluster_name, hosts, custom_headers:nil)
      # Send request
      promise = begin_restart_hosts_async(resource_group_name, cluster_name, hosts, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Restarts the specified HDInsight cluster hosts.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param hosts [Array<String>] The list of hosts to restart
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_restart_hosts(resource_group_name, cluster_name, hosts, custom_headers:nil)
      response = begin_restart_hosts_async(resource_group_name, cluster_name, hosts, custom_headers:custom_headers).value!
      nil
    end

    #
    # Restarts the specified HDInsight cluster hosts.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param hosts [Array<String>] The list of hosts to restart
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_restart_hosts_with_http_info(resource_group_name, cluster_name, hosts, custom_headers:nil)
      begin_restart_hosts_async(resource_group_name, cluster_name, hosts, custom_headers:custom_headers).value!
    end

    #
    # Restarts the specified HDInsight cluster hosts.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param cluster_name [String] The name of the cluster.
    # @param hosts [Array<String>] The list of hosts to restart
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_restart_hosts_async(resource_group_name, cluster_name, hosts, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'cluster_name is nil' if cluster_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'hosts is nil' if hosts.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = {
        client_side_validation: true,
        required: true,
        serialized_name: 'hosts',
        type: {
          name: 'Sequence',
          element: {
              client_side_validation: true,
              required: false,
              serialized_name: 'StringElementType',
              type: {
                name: 'String'
              }
          }
        }
      }
      request_content = @client.serialize(request_mapper,  hosts)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HDInsight/clusters/{clusterName}/restartHosts'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'clusterName' => cluster_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest2::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
