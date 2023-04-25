# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30_preview
  #
  # SharedGalleryImages
  #
  class SharedGalleryImages
    include MsRestAzure

    #
    # Creates and initializes a new instance of the SharedGalleryImages class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ComputeManagementClient] reference to the ComputeManagementClient
    attr_reader :client

    #
    # List shared gallery images by subscription id or tenant id.
    #
    # @param location [String] Resource location.
    # @param gallery_unique_name [String] The unique name of the Shared Gallery.
    # @param shared_to [SharedToValues] The query parameter to decide what shared
    # galleries to fetch when doing listing operations. Possible values include:
    # 'tenant'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<SharedGalleryImage>] operation results.
    #
    def list(location, gallery_unique_name, shared_to:nil, custom_headers:nil)
      first_page = list_as_lazy(location, gallery_unique_name, shared_to:shared_to, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List shared gallery images by subscription id or tenant id.
    #
    # @param location [String] Resource location.
    # @param gallery_unique_name [String] The unique name of the Shared Gallery.
    # @param shared_to [SharedToValues] The query parameter to decide what shared
    # galleries to fetch when doing listing operations. Possible values include:
    # 'tenant'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(location, gallery_unique_name, shared_to:nil, custom_headers:nil)
      list_async(location, gallery_unique_name, shared_to:shared_to, custom_headers:custom_headers).value!
    end

    #
    # List shared gallery images by subscription id or tenant id.
    #
    # @param location [String] Resource location.
    # @param gallery_unique_name [String] The unique name of the Shared Gallery.
    # @param shared_to [SharedToValues] The query parameter to decide what shared
    # galleries to fetch when doing listing operations. Possible values include:
    # 'tenant'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(location, gallery_unique_name, shared_to:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'gallery_unique_name is nil' if gallery_unique_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/sharedGalleries/{galleryUniqueName}/images'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'location' => location,'galleryUniqueName' => gallery_unique_name},
          query_params: {'api-version' => @client.api_version,'sharedTo' => shared_to},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Compute::Mgmt::V2020_09_30_preview::Models::SharedGalleryImageList.mapper()
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
    # Get a shared gallery image by subscription id or tenant id.
    #
    # @param location [String] Resource location.
    # @param gallery_unique_name [String] The unique name of the Shared Gallery.
    # @param gallery_image_name [String] The name of the Shared Gallery Image
    # Definition from which the Image Versions are to be listed.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SharedGalleryImage] operation results.
    #
    def get(location, gallery_unique_name, gallery_image_name, custom_headers:nil)
      response = get_async(location, gallery_unique_name, gallery_image_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a shared gallery image by subscription id or tenant id.
    #
    # @param location [String] Resource location.
    # @param gallery_unique_name [String] The unique name of the Shared Gallery.
    # @param gallery_image_name [String] The name of the Shared Gallery Image
    # Definition from which the Image Versions are to be listed.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(location, gallery_unique_name, gallery_image_name, custom_headers:nil)
      get_async(location, gallery_unique_name, gallery_image_name, custom_headers:custom_headers).value!
    end

    #
    # Get a shared gallery image by subscription id or tenant id.
    #
    # @param location [String] Resource location.
    # @param gallery_unique_name [String] The unique name of the Shared Gallery.
    # @param gallery_image_name [String] The name of the Shared Gallery Image
    # Definition from which the Image Versions are to be listed.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(location, gallery_unique_name, gallery_image_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'gallery_unique_name is nil' if gallery_unique_name.nil?
      fail ArgumentError, 'gallery_image_name is nil' if gallery_image_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/sharedGalleries/{galleryUniqueName}/images/{galleryImageName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'location' => location,'galleryUniqueName' => gallery_unique_name,'galleryImageName' => gallery_image_name},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Compute::Mgmt::V2020_09_30_preview::Models::SharedGalleryImage.mapper()
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
    # List shared gallery images by subscription id or tenant id.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SharedGalleryImageList] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List shared gallery images by subscription id or tenant id.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # List shared gallery images by subscription id or tenant id.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest2::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Compute::Mgmt::V2020_09_30_preview::Models::SharedGalleryImageList.mapper()
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
    # List shared gallery images by subscription id or tenant id.
    #
    # @param location [String] Resource location.
    # @param gallery_unique_name [String] The unique name of the Shared Gallery.
    # @param shared_to [SharedToValues] The query parameter to decide what shared
    # galleries to fetch when doing listing operations. Possible values include:
    # 'tenant'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SharedGalleryImageList] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(location, gallery_unique_name, shared_to:nil, custom_headers:nil)
      response = list_async(location, gallery_unique_name, shared_to:shared_to, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
