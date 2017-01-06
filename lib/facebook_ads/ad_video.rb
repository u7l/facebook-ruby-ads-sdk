module FacebookAds
  # An ad video belongs to an ad account.
  # A video will always produce the same hash.
  # https://developers.facebook.com/docs/marketing-api/advideo/v2.7
  class AdVideo < Base
    FIELDS = %w(id file_url).freeze

    class << self
      def find(_id)
        raise Exception, 'NOT IMPLEMENTED'
      end
    end

    def hash
      self[:hash]
    end

    def update(_data)
      raise Exception, 'NOT IMPLEMENTED'
    end

    def destroy
      super(path: "/act_#{account_id}/advideos", query: { hash: hash })
    end
  end
end
