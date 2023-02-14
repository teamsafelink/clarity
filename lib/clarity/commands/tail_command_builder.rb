# 
# Handles tailing of log files
#
require "shellwords"
class TailCommandBuilder < GrepCommandBuilder
  
  def valid?
    raise InvalidParameterError, "Log file parameter not supplied or invalid log file" unless filename && !filename.empty?
    true
  end
  
  def command
    results = []
    exec_functions.each_with_index do |cmd, index|
      if index == 0
        results << cmd.gsub('filename', filename.to_s.shellescape)
      else
        results << cmd.gsub('filename', filename.to_s.shellescape).gsub('options', options.to_s.shellescape).gsub('term', terms[index-1].to_s.shellescape)
      end
    end
    %[sh -c '#{results.join(" | ")}']
  end

  
  def default_tools
    terms.empty? ? ['tail -n 250 -f filename'] : ['tail -n 250 -f filename'] + ['grep options -e term'] * (terms.size)
  end
end
