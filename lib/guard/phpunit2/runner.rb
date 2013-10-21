require 'tmpdir'
require 'fileutils'

module Guard
  class PHPUnit2

    # The Guard::PHPUnit runner handles running the tests, displaying
    # their output and notifying the user about the results.
    #
    module Runner
      class << self

        # Runs the PHPUnit tests and displays notifications
        # about the results.
        #
        # @param [Array<Strings>] path to the tests files.
        # @param (see PHPUnit#initialize)
        # @return [Boolean] whether the tests were run successfully
        #
        def run(paths, options = {})
          paths = Array(paths)

          return false if paths.empty?

          unless phpunit_exists?(options)
            UI.error('the provided php unit command is invalid or phpunit is not installed on your machine.', :reset => true)
            return false
          end

          run_tests(paths, options)
        end

        private

        # Checks that phpunit is installed on the user's
        # machine.
        #
        # @return [Boolean] The status of phpunit
        #
        def phpunit_exists?(options)
          command = "phpunit"
          command = options[:command] if options[:command]

          `#{command} --version`
          true
        rescue Errno::ENOENT
          false
        end

        # Executes the testing command on the tests
        # and returns the status of this process.
        #
        # @param (see #run)
        # @param (see #run)
        #
        def run_tests(paths, options)

          tests_path = paths.first
          output = execute_command phpunit_command(tests_path, options)

          # print the output to the terminal
          puts output

          # return false in case the system call fails with no status!
          return false if $?.nil?

          # capture success so that if notifications alter the status stored in $? we still return the correct value
          success = $?.success?

          success
        end

        # Generates the phpunit command for the tests paths.
        #
        # @param (see #run)
        # @param (see #run)
        # @see #run_tests
        #
        def phpunit_command(path, options)
          # formatter_path = File.join( File.dirname(__FILE__), 'formatters', 'PHPUnit-Progress')

          command = "phpunit"
          command = options[:command] if options[:command]

          cmd_parts = []
          cmd_parts << command
          # cmd_parts << options[:cli] if options[:cli]
          cmd_parts << path

          cmd_parts.join(' ')
        end

        # Executes a system command and returns the output.
        #
        # @param [String] command the command to be run
        # @return [String] the output of the executed command
        #
        def execute_command(command)
          %x{#{command}}
        end
      end
    end
  end
end
