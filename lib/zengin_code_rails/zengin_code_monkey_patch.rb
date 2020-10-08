# frozen_string_literal: true

module ZenginCode
  # ZenginCode::Version is not updated. See
  # https://github.com/zengin-code/zengin-rb/issues/2.
  ZENGIN_CODE_VERSION = Gem.loaded_specs["zengin_code"].version.to_s

  class Bank # :nodoc:
    include ActiveModel::Model

    def cache_key
      ZENGIN_CODE_VERSION + code
    end
  end

  class Branch # :nodoc:
    include ActiveModel::Model

    def cache_key
      ZENGIN_CODE_VERSION + code
    end
  end
end
