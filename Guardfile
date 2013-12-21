# Guardfile

require 'guard/plugin'

module ::Guard
  class InlineGuard < ::Guard::Plugin
    SCHEME = 'Tests'
    DESTINATION = 'platform=iOS Simulator,name=iPhone Retina (3.5-inch),OS=7.0'
    SUFFIX = "| xcpretty -c"
    COMMAND = "xcodebuild test -scheme #{SCHEME} -destination '#{DESTINATION}'"
    #COMMAND = "xcodebuild test -scheme #{SCHEME} -destination '#{DESTINATION}' #{SUFFIX}"
    def run_all
      system(COMMAND)
    end
    def run_on_changes(paths)
      run_all
      #onlys = paths.map {|path| "-only Tests:#{File.basename(path, '.*')}" }.join(' ')
      #if onlys.empty?
        #system(COMMAND)
      #else
        #system("#{COMMAND} #{onlys}")
      #end
    end
  end
end

guard :inline_guard do
  watch /.*\.[mh]$/
end
