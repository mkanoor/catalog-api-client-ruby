=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

The version of the OpenAPI document: 1.1.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module CatalogApiClient
  class OrderItem
    attr_accessor :id

    attr_accessor :count

    attr_accessor :service_parameters

    # The provider specific parameters needed to provision this service. This might include namespaces, special keys.
    attr_accessor :provider_control_parameters

    # Stores the Portfolio Item ID.
    attr_accessor :portfolio_item_id

    # Current state of this order item.
    attr_accessor :state

    # The Order that the OrderItem belongs to.
    attr_accessor :order_id

    attr_accessor :created_at

    # The time at which the order request was sent to the Topology Service
    attr_accessor :order_request_sent_at

    attr_accessor :completed_at

    attr_accessor :updated_at

    attr_accessor :owner

    # The external url of the service instance used with relation to this order item
    attr_accessor :external_url

    # The insights request id can be used to collect log data for this order item as its processed by the system
    attr_accessor :insights_request_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'count' => :'count',
        :'service_parameters' => :'service_parameters',
        :'provider_control_parameters' => :'provider_control_parameters',
        :'portfolio_item_id' => :'portfolio_item_id',
        :'state' => :'state',
        :'order_id' => :'order_id',
        :'created_at' => :'created_at',
        :'order_request_sent_at' => :'order_request_sent_at',
        :'completed_at' => :'completed_at',
        :'updated_at' => :'updated_at',
        :'owner' => :'owner',
        :'external_url' => :'external_url',
        :'insights_request_id' => :'insights_request_id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'count' => :'Integer',
        :'service_parameters' => :'Object',
        :'provider_control_parameters' => :'Object',
        :'portfolio_item_id' => :'String',
        :'state' => :'String',
        :'order_id' => :'String',
        :'created_at' => :'DateTime',
        :'order_request_sent_at' => :'DateTime',
        :'completed_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'owner' => :'String',
        :'external_url' => :'String',
        :'insights_request_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'service_parameters',
        :'provider_control_parameters',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CatalogApiClient::OrderItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CatalogApiClient::OrderItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      else
        self.count = 1
      end

      if attributes.key?(:'service_parameters')
        self.service_parameters = attributes[:'service_parameters']
      end

      if attributes.key?(:'provider_control_parameters')
        self.provider_control_parameters = attributes[:'provider_control_parameters']
      end

      if attributes.key?(:'portfolio_item_id')
        self.portfolio_item_id = attributes[:'portfolio_item_id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'order_request_sent_at')
        self.order_request_sent_at = attributes[:'order_request_sent_at']
      end

      if attributes.key?(:'completed_at')
        self.completed_at = attributes[:'completed_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.key?(:'external_url')
        self.external_url = attributes[:'external_url']
      end

      if attributes.key?(:'insights_request_id')
        self.insights_request_id = attributes[:'insights_request_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @count.nil?
        invalid_properties.push('invalid value for "count", count cannot be nil.')
      end

      if @portfolio_item_id.nil?
        invalid_properties.push('invalid value for "portfolio_item_id", portfolio_item_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @count.nil?
      return false if @portfolio_item_id.nil?
      state_validator = EnumAttributeValidator.new('String', ["Created", "Approval Pending", "Ordered", "Failed", "Completed", "Approved", "Denied", "Canceled"])
      return false unless state_validator.valid?(@state)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["Created", "Approval Pending", "Ordered", "Failed", "Completed", "Approved", "Denied", "Canceled"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          count == o.count &&
          service_parameters == o.service_parameters &&
          provider_control_parameters == o.provider_control_parameters &&
          portfolio_item_id == o.portfolio_item_id &&
          state == o.state &&
          order_id == o.order_id &&
          created_at == o.created_at &&
          order_request_sent_at == o.order_request_sent_at &&
          completed_at == o.completed_at &&
          updated_at == o.updated_at &&
          owner == o.owner &&
          external_url == o.external_url &&
          insights_request_id == o.insights_request_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, count, service_parameters, provider_control_parameters, portfolio_item_id, state, order_id, created_at, order_request_sent_at, completed_at, updated_at, owner, external_url, insights_request_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        CatalogApiClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
