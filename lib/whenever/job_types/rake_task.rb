module Whenever
  module Job
    class RakeTask < Whenever::Job::Default
      
      def output
        path_required
        "cd #{@path} && /usr/bin/env RAILS_ENV=#{@environment} rake #{task}"
      end
      
    end
  end
end
