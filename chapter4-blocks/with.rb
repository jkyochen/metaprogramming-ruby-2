
module Kernel
    def with(resource)
        return unless block_given?

        begin
            yield
        ensure
            resource.dispose
        end
    end
end
