# encoding: utf-8

module InitializeAsVerbose
  class Engine < ::Rails::Engine

    if ENV['BOOT_VERBOSE'] == 'true'
      config.before_configuration do
        module ::Rails
          class Application < ::Rails::Engine
            def initializers
              bootstrap = Bootstrap.initializers_for(self) #BOOTSTRAP
              railties = super #RAILTIES
              finisher = Finisher.initializers_for(self) #FINISHER
              if Rails.env.development?
                print_initializers(bootstrap, "#BOOTSTRAP")
                print_initializers(railties, "#RAILTIES")
                print_initializers(finisher, "#FINISHER")
              end
              bootstrap + railties + finisher
            end

            def print_initializers(initializers, stage)
              p stage
              initializers.each do |i|
                p i.name
              end
              p "----------------------------"
            end
          end
        end
      end
    end

  end
end
