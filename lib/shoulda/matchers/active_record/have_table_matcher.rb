module ActiveRecordMatchers
  class HaveTableMatcher
    def matches?(target)
      @target = target
      @target.table_exists?
    end

    def description
      "have existing table #{@target.table_name}"
    end

    def failure_message
      "expected table '#{@target.table_name}' to exist for #{@target.inspect}"
    end

    def negative_failure_message
      "expected table '#{@target.table_name}' not to exist for #{@target.inspect}"
    end
  end

  def have_a_table
    HaveTableMatcher.new
  end
end
