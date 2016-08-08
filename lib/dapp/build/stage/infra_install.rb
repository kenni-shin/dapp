module Dapp
  module Build
    module Stage
      # InfraInstall
      class InfraInstall < Base
        def initialize(application, next_stage)
          @prev_stage = From.new(application, self)
          super
        end

        def dependencies
          application.builder.infra_install_checksum
        end

        def image
          super do |image|
            application.builder.infra_install(image)
          end
        end
      end # InfraInstall
    end # Stage
  end # Build
end # Dapp
